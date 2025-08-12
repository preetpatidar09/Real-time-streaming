import json
import time
import mysql.connector
from kafka import KafkaProducer
from datetime import datetime

MYSQL_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "password",
    "database": "test_db"
}

producer = KafkaProducer(
    bootstrap_servers="localhost:9092",
    value_serializer=lambda v: json.dumps(v).encode("utf-8")
)

last_seen_timestamp = "1970-01-01 00:00:00"

while True:
    conn = mysql.connector.connect(**MYSQL_CONFIG)
    cursor = conn.cursor(dictionary=True)

    query = f"""
        SELECT * FROM orders
        WHERE last_updated > '{last_seen_timestamp}'
        ORDER BY last_updated ASC
    """
    cursor.execute(query)
    rows = cursor.fetchall()

    if rows:
        for row in rows:
            producer.send("orders_topic", row)
        last_seen_timestamp = max(row["last_updated"].strftime("%Y-%m-%d %H:%M:%S") for row in rows)

    conn.close()
      

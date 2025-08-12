Real Time Streaming
CDC Pipeline – MySQL → Kafka → Spark → Cassandra
📌 Overview
This project demonstrates a real-time Change Data Capture (CDC) pipeline that streams changes from MySQL into Apache Kafka, processes them with Apache Spark Structured Streaming, and stores them in Cassandra for real-time analytics.

With sub-minute end-to-end latency, this pipeline enables up-to-date operational dashboards and business metrics.

🚀 Architecture
Flow:

MySQL – Source database with CDC enabled (e.g., Debezium or Kafka Connect MySQL Source Connector).

Kafka – Streams change events from MySQL.

Spark Structured Streaming – Consumes from Kafka, applies transformations, and handles schema evolution.

Cassandra – Stores processed data for real-time queries.


MySQL  →  Kafka  →  Spark Structured Streaming  →  Cassandra
✨ Key Features
Real-time Change Data Capture (CDC) from MySQL.

Sub-minute end-to-end latency from source to analytics store.

Scalable & fault-tolerant processing with Apache Kafka and Spark.

Schema evolution support via Confluent Schema Registry.

Seamless Cassandra integration for structured, queryable data.

Operational dashboards & analytics-ready data.

🛠️ Tech Stack
MySQL – Source database

Apache Kafka – Messaging backbone

Apache Spark Structured Streaming – Real-time processing

Cassandra – Analytics and query storage

Confluent Schema Registry – Schema evolution and management

📊 Use Case
Business Metrics Dashboard – Always up-to-date order counts, revenue, and customer activity.

Operational Alerts – Trigger notifications when anomalies are detected in the data stream.

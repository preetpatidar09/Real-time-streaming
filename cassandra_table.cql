CREATE KEYSPACE realtime_analytics WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};

CREATE TABLE realtime_analytics.orders (
    order_id int PRIMARY KEY,
    customer_name text,
    amount decimal,
    last_updated timestamp
);

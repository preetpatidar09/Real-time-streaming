# Real-Time CDC Pipeline – MySQL → Kafka → Spark Structured Streaming → Cassandra

## 📌 Overview
This project implements a **real-time Change Data Capture (CDC)** pipeline without Debezium or Kafka Connect, using a **timestamp-based CDC** approach.  
It streams only changed rows from **MySQL** into **Kafka**, processes them in **Apache Spark Structured Streaming**, and writes the results into **Cassandra** for real-time analytics.

## 🚀 Architecture
**Flow:**
MySQL (with last_updated timestamp)
↓ (CDC fetch of new/updated rows)
Kafka Producer (Python)
↓
Apache Kafka
↓
Spark Structured Streaming (Databricks)
↓
Cassandra (Astra DB or on-prem)


**Key Features**
- Real-time ingestion without Debezium/Kafka Connect
- Timestamp-based incremental fetch (no full table scan)
- Sub-minute end-to-end latency
- Fault-tolerant & scalable processing
- Ready for operational dashboards & alerts

---

## 🛠️ Tech Stack
- **MySQL** – Source database (with `last_updated` timestamp)
- **Apache Kafka** – Messaging backbone
- **Python** – Kafka producer for CDC
- **Apache Spark Structured Streaming (Databricks)** – Real-time processing
- **Cassandra / Astra DB** – Analytics storage

---

## 📊 Use Cases
- **Business Metrics Dashboard** – Always up-to-date KPIs like orders, revenue, and customer activity
- **Operational Alerts** – Trigger notifications when anomalies are detected in the data stream

---

## 📸 Architecture Diagram
![Architecture](architecture.png)

# SQL Schema Performance Benchmarking — Raw vs Normalized

Empirical performance analysis comparing a denormalized (raw) schema against a 
normalized relational schema (2NF/3NF) across three dataset sizes using MySQL 8.x, 
Python, and automated shell timing pipelines.

## Key Findings

| Query | Raw (100MB) | Normalized (100MB) | Difference |
|-------|-------------|-------------------|------------|
| Q1 – Unique persons | 1.3410s | 0.3571s | 73% faster |
| Q2 – Active workers + school | 0.4808s | 0.3439s | 28% faster |
| Q3 – Assistant Professors @ UMass | 0.4307s | 0.0376s | 91% faster |
| Q4 – People per campus (latest year) | 0.7654s | 1.5996s | 109% slower |
| Q5 – Total earnings per person | 0.8031s | 1.9305s | 140% slower |

**Core insight:** Normalization dramatically improves selective dimension queries 
(Q1, Q3) but introduces overhead on large fact table aggregations (Q4, Q5) 
without supporting indexes — consistent with classical OLTP vs OLAP design theory.

---

## Project Overview

- **Dataset sizes tested:** 1MB, 10MB, 100MB CSV files
- **Schemas compared:** Single-table raw schema vs 5-table normalized schema
- **Queries benchmarked:** 5 analytical queries on both schemas
- **Visualization:** Python-generated comparison graphs per query
- **Context:** CIS 552 Database Design — University of Massachusetts Dartmouth

---

## Schema Design

### Raw Schema
Single table `salary_raw` storing all columns directly — simple to load but 
heavily redundant across person–job–year combinations.

### Normalized Schema (2NF/3NF)
Decomposed into 5 relational tables:

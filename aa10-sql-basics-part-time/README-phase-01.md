# Basic Phase 1: Database Schema

In this phase, you will practice designing a database schema in a database
schema visualizer of your choice.

## Instructions

Design a database schema in a database schema visualizer of your choice for
the following scenario:

You are a coffee shop owner that wants to create a customer loyalty program.
For each coffee that a customer purchases, they get 1 point. When a customer
first joins the program, they automatically get loaded with 5 points. They can
use 10 points to redeem a free coffee. You want to record the name of the
customer and an optional two forms of contact with the customer. You also want
to keep track of when each coffee was purchased or redeemed.

```
//CREATE TABLE customers (
    points INTEGER
    name VARCHAR(100)
    phone_number INTEGER/VARCHAR(13)
    email VARCHAR(20)
    purchase_dates VARCHAR(20)
    redeem_dates VARCHAR(20)
)

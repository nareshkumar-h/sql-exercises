# Startup - Flipkart - Online Product Sales

# Sprint 1:
## Feature 1: Manage Products 

## Design 1
* Create table "products"

|product_name| category | price |
|--|--|--|
|Good to Great | BOOKS | 450 |
| 7 Habits of Highly Effective People | BOOKS | 500 |
| Six Thinking Hats | BOOKS | 500 |
| iPhone-8S| MOBILE | 50000 |
| Lenova -K4| MOBILE | 15000 |
| OnePlus| MOBILE | 30000 |


## Design 2:
* Create table "products"

|product_id| product_name|price |
|--|--|--|
|1| Good to Great  | 450 |
|2| 7 Habits of Highly Effective People | 500 |
|3| Six Thinking Hats  | 500 |
|4| iPhone-8S| 50000 |
|5| Lenova -K4| 15000 |
|6| OnePlus| 30000 |

* Create table "category"

|product_id| category_name|
|--|--|
|1| BOOKS |
|2| BOOKS | 
|3| BOOKS | 
|4| MOBILE |
|5| MOBILE |
|6| MOBILE | 

## Design 3

* Create table "products"

|product_id| product_name|price |
|--|--|--|
|1| Good to Great  | 450 |
|2| 7 Habits of Highly Effective People | 500 |
|3| Six Thinking Hats  | 500 |
|4| iPhone-8S| 50000 |
|5| Lenova -K4| 15000 |
|6| OnePlus| 30000 |

* Create table "category"

|category_id| category_name|
|--|--|
|1| BOOKS |
|2| MOBILE |

* Create table "product_category"

|product_id| category_id|
|--|--|
|1| 1 |
|2| 1 | 
|3| 1 | 
|4| 2 |
|5| 2 |
|6| 2 | 


## What is Functional Dependency ?

* The attributes of a table is said to be dependent on each other when an attribute of a table uniquely identifies another attribute of the same table.

* Here <strong>PRODUCT_ID</strong> attribute uniquely identifies the <strong>PRODUCT_NAME</strong> attribute of products table.
* If we know the <strong>PRODUCT_ID</strong> we can tell the <strong>PRODUCT_NAME</strong> associated with it. 
* This is known as <strong>functional dependency</strong>.
* It can be written as PRODUCT_ID -> PRODUCT_NAME or in words we can say PRODUCT_NAME is functionally dependent on PRODUCT_ID.

Note:
* If column A of a table uniquely identifies the column B of same table then it can represented as A->B (Attribute B is functionally dependent on attribute A)

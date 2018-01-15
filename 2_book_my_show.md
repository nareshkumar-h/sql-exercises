# Startup - BookMyShow - Online Movie Ticket Booking App

# Sprint 1: 

### Feature 1: Display Theatre and Movies

#### Task 1.1: Create a Table "movies"

#### Table Design 1:
|id|movie_name|theatre_names|
---|--|--|
|1|Padikathavan |Satyam,Express Avenue|
|2|Jumanji |Satyam,AGS,Express Avenue|
|3|Sketch |Express Avenue,Skywalk|

#### Table Design 2:
|id|theatre_name|movies|
---|--|--|
|1|Satyam| Padikathavan,Jumanji|
|2|Express Avenue| Padikathavan,Sketch|
|3|Skywalk|Sketch|
|4|AGS|Jumanji|


#### First Normal Form (1NF)
#### Rule 1:
* As per the rule of first normal form, an attribute (column) of a table cannot hold multiple values. 
* It should hold only atomic values.

* It was defined to disallow multivalued attributes, composite attributes, and their combinations.
* It states that the domain of an attribute must include only atomic (simple, indivisible) values and that the value of any attribute in a tuple must be a single value from the domain of that attribute.
* Hence, 1NF disallows having a set of values, a tuple of values, or a combination of both as an attribute value for a single tuple.
* In other words, 1NF disallows relations within relations or relations as attribute values within tuples. 
* The only attribute values permitted by 1NF are single atomic (or indivisible) values.

#### Violation #1: 
* e.g: theatre_names => Satyam,Express Avenue
        
#### After Applying 1st Normal Form

|id|movie_name|theatre_name|
---|--|--|
|1|Padikathavan |Satyam|
|2|Padikathavan |Express Avenue|
|3|Jumanji |Satyam|
|4|Jumanji |AGS|
|5|Jumanji |Express Avenue|
|6|Sketch |Express Avenue|
|7|Sketch |Skywalk|

#### Problem after 1NF:
* Using the First Normal Form, <strong>data redundancy increases</strong>, as there will be many columns with same data in multiple rows but each row as a whole will be unique.

### Solution: Split the table

##### Table 1: movies
|movie_id|movie_name|
---|--|
|1|Padikathavan |
|2|Jumanji |
|3|Sketch |


##### Table 2: theatres
|theatre_id|movie_id|theatre_name|
---|--|--|
|1|1 |Satyam|
|2|1 |Express Avenue|
|3|2 |Satyam|
|4|2 |AGS|
|5|2 |Express Avenue|
|6|3 |Express Avenue|
|7|3 |Skywalk|


#### Normalization
* Normalization is a process of organizing the data in database to :avoid 
   * data redundancy
   * insertion anomaly
   * update anomaly 
   * deletion anomaly. 

* Let’s discuss about anomalies first then we will discuss normal forms with examples.

#### Types of Anomalies
* There are three types of anomalies that occur when the database is not normalized. 
   * Insertion
   * Update and 
   * Deletion anomaly.



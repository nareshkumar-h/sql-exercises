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

#### Design Flaw

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



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
* It was defined to disallow multivalued attributes, composite attributes, and their combinations.
* It states that the domain of an attribute must include only atomic (simple, indivisible) values and that the value of any attribute in a tuple must be a single value from the domain of that attribute.
* Hence, 1NF disallows having a set of values, a tuple of values, or a combination of both as an attribute value for a single tuple.
* In other words, 1NF disallows relations within relations or relations as attribute values within tuples. 
* The only attribute values permitted by 1NF are single atomic (or indivisible) values.


#### Violation #1: 
* e.g: theatre_names => Satyam,Express Avenue
        
#### Design Proposal 1: 

* Assumption: 
  * If a maximum number of values is known for the attribute—for example, if it is known that at most three theatre can run the same movie.
  * Then replace the theatre_names attribute by three atomic attributes: 
      * theatre_name_1, theatre_name_2, and theatre_name_3.

|id|movie_name|theatre_name_1|theatre_name_2|theatre_name_3|
---|--|--|--|--|
|1|Padikathavan |Satyam|Express Avenue|
|2|Jumanji |Satyam|AGS|Express Avenue|
|3|Sketch |Express Avenue|Skywalk|

* Drawbacks:
   * This solution has the disadvantage of introducing NULL values if a movie is running in fewer than three locations. 
   * It further introduces spurious semantics about the ordering among the location values that is not originally intended.
   * Querying on this attribute becomes more difficult.
   * For example, consider how you would write the query: 
      * List the movies running in "Express Avenue" theatre.

#### Design Proposal 2: 

|id|movie_name|theatre_name|
---|--|--|
|1|Padikathavan |Satyam|
|2|Padikathavan |Express Avenue|
|3|Jumanji |Satyam|
|4|Jumanji |AGS|
|5|Jumanji |Express Avenue|
|6|Sketch |Express Avenue|
|7|Sketch |Skywalk|

#### Drawbacks:
* Using the First Normal Form, <strong>data redundancy increases</strong>, as there will be many columns with same data in multiple rows but each row as a whole will be unique.

### Design Proposal 3( Recommended) : Split the table

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


#### Advantages:
*  It is considered best because it does not suffer from redundancy and it is completely general, having no limit placed on
a maximum number of values.


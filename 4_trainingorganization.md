# Training Institute 

## Requirements
#### Features required for our application:

* We need to manage courses in our application - Java/MySQL/Angular
* We need to manage trainer details
* We need to manage student details
* We need to manage course enrollment details

## Design #1: Denormalized Table


student_id | student_name | phone | email | course_id | course_name | course_price | trainer_id | trainer_name
--- | --- | --- | --- |--- |--- |--- |--- |--- 
|1|S1| 999|s1@gmail.com|1|Java|10000|1|Naresh|
|2|S2| 888|s2@gmail.com|2|MySQL|5000|2|Prabhu|
|3|S3| 777|s3@gmail.com|3|Angular|20000|3|Janani|


## Task : Apply Normalization 

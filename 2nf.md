# Second Normal Form

* Second normal form (2NF) is based on the concept of full functional dependency.

#### Full Functional Dependency:
* A functional dependency X → Y is a full functional dependency if removal of any attribute A from X means that the dependency does not hold any more; that is, for
any attribute A ε X, (X – {A}) does not functionally determine Y. 

#### Partial Dependency:
* A functional dependency X → Y is a partial dependency if some attribute A ε X can be removed from X and the dependency still holds; that is, for some A ε X, (X – {A}) → Y. 

#### Example: Table "students"

|student_id|student_name|professor_id|professor_name|grade|
|---|---|--|--|--|
|1|Naresh | 101| Mr.Siva | A |
|2|Suresh | 102| Mr.Subash | B |
|3|Janani | 103| Mr.Murali | B |


#### The following functional dependencies exist:

1. The attribute "professor_name" is functionally dependent on attribute professor_id (professor_id --> professor_name)

2. The attribute "student_name" is functionally dependent on student_id (student_id --> student_name)

3. The attribute Grade is fully functional dependent on "student_id" and "professor_id" (student_id,professor_id --> Grade)


#### Drawbacks:
* If student1 leaves the university, the row is deleted, then we loose all information about professor Mr.Siva,since this attribute is fully functional dependent on primary key "student_id"

#### Solution: Split the tables

* Table "students":

|student_id|student_name|
|---|---|
|1|Naresh |
|2|Suresh |
|3|Janani |


* Table: "professors"

|professor_id|professor_name|
|---|---|
| 101| Mr.Siva |
| 102| Mr.Subash |
| 103| Mr.Murali |

* Table: "grades"

| student_id | professor_id | grade |
|--|--|--|
|1|101|A|
|2|102|B|
|3|103|C|


* Reference: http://www.gitta.info/LogicModelin/en/html/DataConsiten_Norm2NF.html

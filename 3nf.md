# Third Normal Form

#### Transitive Dependency:
* Third normal form (3NF) is based on the concept of transitive dependency. 
* A functional dependency X → Y in a relation schema R is a transitive dependency if there exists a set of attributes Z in R that is neither a candidate key nor a subset of
any key of R, and both X → Z and Z → Y hold. 


#### Example:
* A relation is in third normal form if it is in 2NF and no non key attribute is transitively dependent on the primary key.

A bank uses the following relation: 

Vendor(ID, Name, Account_No, Bank_Code_No, Bank) 

The attribute ID is the identification key. All attributes are single valued (1NF). The table is also in 2NF. 

The following dependencies exist: 

1. Name,Account_no, , Bank_Code are functionally dependent on ID (ID --> Name, Account_No, Bank_Code) 

2. Bank_name is functionally dependent on Bank_Code (Bank_Code --> Bank_name)


#### Table: vendors
|ID|NAME|ACCOUNT_NO|BANK_CODE|BANK_NAME|
|--|--|--|--|--|
|1|Naresh | S001| B001|ICICI|
|2|Siva | S002| B001|ICICI|


#### Solution: Split Tables
* Table: vendors

|ID|NAME|ACCOUNT_NO|BANK_CODE|
|--|--|--|--|
|1|Naresh | S001| B001|
|2|Siva | S002| B001|


* Table: bank

|BANK_CODE|BANK_NAME|
|--|--|
|B001|ICICI|



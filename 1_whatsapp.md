# Startup - Whatsapp Application

## Product Backlog
* User Registration
* Send Messages
* Display Message Status ( Read or Yet to Read )
* Capturing Read Time
* Display User Status
* Send Group Messages

## Sprint 1: 
### Feature 1: User Registration
#### Task 1.1: Create Table USERS with appropriate constraints
* Create a table "USERS" with the below fields:
   * id, name, mobile_no, created_at
* Constraints: 
   * Mandatory Fields: id,name, mobile_no,created_at
   * Primary Key : id
   * Unique : mobile_no
* Default Values: 
   * id -> auto_increment
   * created_at -> current_timestamp
```sql
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    mobile_no BIGINT NOT NULL,
    joined_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (mobile_no)
);
```

#### Task 1.2: Populate Sample Records
* insert into users (name,mobileno) values ( 'Naresh Kumar', 9994194773 );
* insert into users (name,mobileno) values ( 'Muthu', 9994190000 );

#### Task 1.3: Display Registered Users
* select * from users


## Sprint 2: 
### Feature 2: Send Messages to Users

#### Task 2.1: Create Message Table
```sql
CREATE TABLE messages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    msg VARCHAR(200) NOT NULL,
    posted_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id INT NOT NULL,
    posted_by INT NOT NULL,
    read_status TINYINT(1) NOT NULL DEFAULT 0,
    read_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (posted_by) REFERENCES users (id)
);

```
#### Task 2.2: Populate Records
```sql
insert into messages ( user_id, msg, posted_by ) values ( 2, 'hi', 1);  -- User 1 sends message to User 2
insert into messages ( user_id, msg, posted_by ) values ( 1, 'Good morning', 2);
```

#### Task 2.3: Display All Messages
```sql
select * from messages;
```

#### Task 2.4: Display Messages sent to me
```sql
select * from messages where user_id = 1;
```

#### Task 2.4: Display Messages sent by me
```sql
select * from messages where posted_by=1;
```

#### Task 2.5: Display Recent Messages
```sql
select * from messages where user_id = 1 order by posted_date desc;
```

#### Task 2.6: Display the Messages Count
```sql
select count(*) no_of_messages from messages where user_id = 1;
```
## Sprint 3
### Feature 3: Display Message Status 

#### Task 3.1: Add status column to Message Table 
* Note: Status [ 0 => unread, 1=> read ]
* Default Status Value => 0  (unread)
```sql
alter table messages add (read_status tinyint(1) not null default 0 );
```

#### Task 3.2: Update Message status from "unread" to "read"
```sql
update messages set read_status =1 where id = 2;
```

#### Task 3.3: Display My Unread Messages Count
```sql
select count(*) as unread_msg_count from messages where user_id = 1 and read_status=0;
```

## Sprint 4
### Feature 4: Capturing Read Time
#### Task 4.1: Add a new column "read_time" to capture when user has read the message
```sql
alter table messages add (read_time timestamp );
```

#### Task 4.2: Update Readtime when we are updating message status
```sql
update messages set read_status =1, read_time=current_timestamp() where id = 1;
```

## Sprint 5
### Feature 5: Display User Status
##### Task 5.1: Create a table to manage different User Status
```sql
create table user_status 
(
id int primary key auto_increment,
status_desc varchar(100) not null,
unique(status_desc)
);
```
#### Task 5.2: Add different User status records
```
insert into user_status (status_desc) values 
('Available'),
('Online'),
('Busy'),
('Sleeping');
```

#### Task 5.3: Add a column "status_id" in "USERS" table 
* Note: Default Status Id for existing Users => 1 means Available
```sql
alter table users add ( status_id int not null default 1 );
alter table users add constraint foreign key (status_id) references user_status(id);
```

#### Task 5.4: Display the User Details and User Status 
```sql
select * from users u, user_status us where u.status_id = us.id and u.id = 1;
```

#### Task 5.5: Display My Status
```sql
select us.status_desc as current_status from users u, user_status us where u.status_id = us.id and u.id = 1;
```

## Sprint 6
### Feature 6: Send Group Messages
#### Task 6.1: Create Group table
```sql
create table groups ( id int primary key auto_increment , group_name varchar(100) not null );
```

#### Task 6.2: Populate Records
```sql
insert into groups ( group_name) values ( 'Roomates');
insert into groups ( group_name) values ( 'Project Team');
```

#### Task 6.3: List groups
```sql
select * from groups;
```

#### Task 6.4: Create a table to manage group members
```sql
create table group_members 
( 
id int primary key auto_increment,
group_id int not null,
user_id int not null,
foreign key ( group_id) references groups(id) ,
foreign key ( user_id) references users(id)
);
```

#### Task 6.5: Add group members
```sql
insert into group_members ( group_id , user_id ) values ( 1, 1);
insert into group_members ( group_id , user_id ) values ( 1, 2);
```

#### Task 6.6: Display all Group members 
```sql
select * from group_members;
```

#### Task 6.7: Display the Group Members for a given Group Id
```sql
select * from group_members where group_id =1 ;
```

#### Task 6.8: Display Group Details and Group Member Details
```sql
select * from groups g , group_members gm where g.id = gm.group_id;
```

#### Task 6.9: Display Group Details, Group Member Details, User Details
```sql
select * from groups g , group_members gm, users u where g.id = gm.group_id and u.id = gm.user_id;
```

#### Task 6.10: Display group name , user name and mobileno
```sql
select g.group_name , u.name, u.mobile_no from groups g , group_members gm, users u where 
g.id = gm.group_id and u.id = gm.user_id;
```



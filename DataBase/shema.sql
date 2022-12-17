
use ismgroup60;

DROP TABLE indicators;
DROP TABLE reports;
DROP TABLE Employee;
DROP TABLE preferences;
DROP TABLE goals;
DROP TABLE client_;
DROP TABLE User_;

select * from preferences;
select* from user_;
Select indicator1,indicator2,indicator3,indicator4 from Preferences where email="sts@gmail.com";
insert into preferences(indicator1,indicator2,indicator3,indicator4,email,preferences_id) 
			values("WEEKS(4X)","Insertions","SOV","Viewabil3+","sts@gmail.com","2");
insert into user_ (email,passwrd,personal_name)
	values("sts@gmail.com","123456","Stelios");
    
insert into client_(email,Company_name,campaign)
	values("sts@gmail.com","Vodafone","camp");

insert into user_ (email,passwrd,personal_name)
	values("test@gmail.com","123456","test");
Insert into client_
	values("campaing","test","test@gmail.com");

Insert into employee(employee_id,email)
		values(1,"test@gmail.com");

CREATE TABLE User_
				(email VARCHAR(40),
				 passwrd VARCHAR(20),
                 PRIMARY KEY (email),
                 personal_name VARCHAR(20)
                 );
                
CREATE TABLE Employee
				(employee_id INTEGER(11),
                email VARCHAR(40),
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(employee_id)
                );

CREATE TABLE client_
				(campaign VARCHAR(20),
                Company_name VARCHAR(20),
                email VARCHAR(40),
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(email)
				);


CREATE TABLE preferences
				(
                indicator1 VARCHAR(10),
                indicator2 VARCHAR(10),
                indicator3 VARCHAR(10),
                indicator4 VARCHAR(10),
                stat_indicator1 VARCHAR(10),
                stat_indicator2 VARCHAR(10),
                stat_indicator3 VARCHAR(10),
                email VARCHAR(40),
                preferences_id VARCHAR(20),
                PRIMARY KEY(preferences_id),
				FOREIGN KEY (email) REFERENCES client_(email)
                );

 CREATE TABLE goals
				(
                email VARCHAR(40),
                target_goals1 INTEGER(11),
                target_goals2 INTEGER(11),
                target_goals3 INTEGER(11),
                target_goals4 INTEGER(11),
                report_id INTEGER(11),
                goals_id VARCHAR(20),
                PRIMARY KEY(goals_id),
                FOREIGN KEY(email) REFERENCES client_(email)
                );
                
CREATE TABLE reports
				(
                reports_id VARCHAR(20),
                size DOUBLE,
                date_ DATE,
                type_ VARCHAR(20),
                employee_id INTEGER(11),
                specific_data VARCHAR(50),
                email VARCHAR(40),
				Cl1 VARCHAR(20),
                Cl2 VARCHAR(20),
                Quatra INTEGER(10),
                Years INTEGER(10),
                goals_id VARCHAR(20),
				preferences_id VARCHAR(20),
                PRIMARY KEY(reports_id),
                FOREIGN KEY(email) REFERENCES user_(email),
                FOREIGN KEY(goals_id) REFERENCES goals(goals_id),
                FOREIGN KEY(preferences_id) REFERENCES preferences(preferences_id)
                );
                
CREATE TABLE Indicators
				(
				ind1 DOUBLE,
                ind2 Int(10),
                ind3 Integer(10),
                ind4 DOUBLE,
				reports_id VARCHAR(20),
                FOREIGN KEY(reports_id) REFERENCES reports(reports_id)
                );
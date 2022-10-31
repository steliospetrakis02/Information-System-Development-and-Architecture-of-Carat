use ismgroup60;

DROP TABLE evaluation;
DROP TABLE Client_;
DROP TABLE Goals;
DROP TABLE Employee;
DROP TABLE Preferences;
DROP TABLE user_reports;
DROP TABLE Reports;
DROP TABLE User_;


CREATE TABLE User_
				(email VARCHAR(20),
				 passwrd VARCHAR(20),
                 PRIMARY KEY (email),
                 sex VARCHAR(10),
				 elname VARCHAR(20),
				 efname VARCHAR(20)
                 );
                
CREATE TABLE Employee
				(employee_id INTEGER,
                email VARCHAR(20) ,
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(employee_id)
                );


                


CREATE TABLE Preferences
				(
                budget INTEGER,
				indicators VARCHAR(10) ,
                Company_name VARCHAR(20),
                Format_ VARCHAR(20),
                email VARCHAR(20),
                PRIMARY KEY(Company_name)
                );



Create TABLE Reports
				(
                company VARCHAR(20),
                campaign_name VARCHAR(20),
                start_date DATETIME,
                end_date DATETIME,
                Data_  integer,
                report_id INTEGER,
                PRIMARY KEY(company)
                );
                
CREATE TABLE User_Reports
				(
				company VARCHAR(20),
                email VARCHAR(20),
				FOREIGN KEY (company) REFERENCES Reports(company),
				FOREIGN KEY (email) REFERENCES user_(email)
                );
                
CREATE TABLE Goals
				(
                target_goals INTEGER,
                report_id INTEGER,
                goals_id INTEGER,
                email VARCHAR(20),
                Primary Key(goals_id)
                );
                
CREATE TABLE Client_
				(campaign VARCHAR(20),
                Company_name VARCHAR(20),
                email VARCHAR(20),
                goals_id INTEGER,
				FOREIGN KEY (email) REFERENCES User_(email),
                FOREIGN KEY (goals_id) REFERENCES Goals(goals_id),
				FOREIGN KEY (Company_name) REFERENCES preferences(Company_name),
                PRIMARY KEY(email)
				);
CREATE TABLE Evaluation
				(
                reports INTEGER,
				email VARCHAR(20),
                staff INTEGER,
                goals INTEGER,
                FareWell INTEGER,
                Extra_FeedBack VARCHAR(100),
				FOREIGN KEY (email) REFERENCES client_(email)
				);


                
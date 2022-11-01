use ismgroup60;

DROP TABLE goals;
DROP TABLE preferences;
DROP TABLE evaluation;
DROP TABLE client_;
DROP TABLE media_manager;
DROP TABLE media_planner;
DROP TABLE reports;
DROP TABLE Employee;
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
				(employee_id INTEGER(11),
                email VARCHAR(20) ,
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(employee_id)
                );

CREATE TABLE client_
				(campaign VARCHAR(20),
                Company_name VARCHAR(20),
                email VARCHAR(20),
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(email)
				);
                
CREATE TABLE media_planner
				(
                employee_id INTEGER ,
				FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
                PRIMARY KEY(employee_id)
                );
                
CREATE TABLE media_manager
				(
                employee_id INTEGER,
				email VARCHAR(10) ,
				FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
                );
CREATE TABLE preferences
				(
                budget INTEGER,
				indicators VARCHAR(10) ,
                Company_name VARCHAR(20),
                Format_ VARCHAR(20),
                email VARCHAR(20),
				FOREIGN KEY (email) REFERENCES client_(email),
                PRIMARY KEY(Company_name)
                );
CREATE TABLE reports
				(
                reports_id VARCHAR(20),
                size DOUBLE,
                indicators VARCHAR(10),
                date_ DATE,
                type_ VARCHAR(20),
                employee_id INTEGER(11),
                PRIMARY KEY(reports_id),
                FOREIGN KEY(employee_id) REFERENCES employee(employee_id)
                );
                
CREATE TABLE evaluation
				(
                email VARCHAR(20),
                reports INTEGER(11),
                staff INTEGER(11),
                goals INTEGER(11),
                Farewell INTEGER(11),
                Extra_Feedback VARCHAR(100),
                FOREIGN KEY(email) REFERENCES client_(email)
                );
CREATE TABLE goals
				(
                email VARCHAR(20),
                target_goals INTEGER(11),
                report_id INTEGER(11),
                goald_id INTEGER(11), 
                FOREIGN KEY(email) REFERENCES client_(email)
                );
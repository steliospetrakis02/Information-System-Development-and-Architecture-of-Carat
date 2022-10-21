use ismgroup60;

DROP TABLE Media_Manager;
DROP TABLE Media_Planner;
DROP TABLE Employee;
DROP TABLE Client_;
DROP TABLE User_;


CREATE TABLE User_
				(email VARCHAR(20),
				 passwrd VARCHAR(20),
                 PRIMARY KEY (email)
                );
                
CREATE TABLE Employee
				(employee_id INTEGER,
                email VARCHAR(10) ,
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(employee_id)
                );

CREATE TABLE Client_
				(campaign VARCHAR(20),
                Company_name VARCHAR(20),
                email VARCHAR(10),
				FOREIGN KEY (email) REFERENCES User_(email),
                PRIMARY KEY(email)
				);
                
CREATE TABLE Media_Planner
				(
                employee_id INTEGER ,
				FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
                PRIMARY KEY(employee_id)
                );
                
CREATE TABLE Media_Manager
				(
                employee_id INTEGER,
				email VARCHAR(10) ,
				FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
                );
                
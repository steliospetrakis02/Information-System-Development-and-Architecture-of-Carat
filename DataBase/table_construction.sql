use ismgroup60;

DROP TABLE User_;
DROP TABLE client_;
DROP TABLE goals;
DROP TABLE preferences;
DROP TABLE Employee;
DROP TABLE reports;
DROP TABLE indicators;




CREATE TABLE User_
				(email VARCHAR(20),
				 passwrd VARCHAR(20),
                 PRIMARY KEY (email),
                 personal_name VARCHAR(20)
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
				
				
CREATE TABLE preferences
				(
                indicator1 VARCHAR(10),
                indicator2 VARCHAR(10),
                indicator3 VARCHAR(10),
                indicator4 VARCHAR(10),
                stat_indicator1 VARCHAR(10),
                stat_indicator2 VARCHAR(10),
                stat_indicator3 VARCHAR(10),
                email VARCHAR(20),
                preferences_id VARCHAR(20),
                PRIMARY KEY(preferences_id),
				FOREIGN KEY (email) REFERENCES client_(email)
                );

 CREATE TABLE goals
				(
                email VARCHAR(20),
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
				Cl1 VARCHAR(20),
                Cl2 VARCHAR(20),
                Quatra INTEGER(10),
                Years INTEGER(10),
                goals_id VARCHAR(20),
				preferences_id VARCHAR(20),
                PRIMARY KEY(reports_id),
                FOREIGN KEY(employee_id) REFERENCES employee(employee_id),
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

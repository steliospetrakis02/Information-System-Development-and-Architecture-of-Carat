
use ismgroup60;

DROP TABLE indicators;
DROP TABLE reports;
DROP TABLE Employee;
DROP TABLE preferences;
DROP TABLE goals;
DROP TABLE client_;
DROP TABLE User_;



CREATE TABLE User_
				(email VARCHAR(40),
				 passwrd VARCHAR(20),
                 PRIMARY KEY (email),
                 personal_name VARCHAR(40)
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
                indicator1 VARCHAR(30),
                indicator2 VARCHAR(30),
                indicator3 VARCHAR(30),
                indicator4 VARCHAR(30),
                stat_indicator1 VARCHAR(30),
                stat_indicator2 VARCHAR(30),
                stat_indicator3 VARCHAR(30),
		stat_indicator4 VARCHAR(30),
                email VARCHAR(40),
                preferences_id VARCHAR(20),
                PRIMARY KEY(preferences_id),
				FOREIGN KEY (email) REFERENCES client_(email)
                );

 CREATE TABLE goals
				(
                email VARCHAR(40),
                target_goals1 INTEGER(21),
                target_goals2 INTEGER(21),
                target_goals3 INTEGER(21),
                target_goals4 INTEGER(21),
                report_id INTEGER(21),
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
                email VARCHAR(40),
                goals_id VARCHAR(20),
		preferences_id VARCHAR(20),
                PRIMARY KEY(reports_id),
                FOREIGN KEY(email) REFERENCES user_(email),
                );
                
CREATE TABLE Indicators
				(
				GRPs VARCHAR(20),
                Reach_1 VARCHAR(20),
                Reach_3 VARCHAR(20),
                SOV VARCHAR(20),
                Insertions VARCHAR(20),
                GRPs_Week VARCHAR(20),
                Weeks VARCHAR(20),
                Weeks_4x VARCHAR(20),
                Impressions VARCHAR(20),
                clicks VARCHAR(20),
                click_rate VARCHAR(20),
                Viewability VARCHAR(20),
				reports_id VARCHAR(30),
                FOREIGN KEY(reports_id) REFERENCES reports(reports_id)
                );

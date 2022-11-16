use ismgroup60;

DROP TABLE User_;
DROP TABLE client_;
DROP TABLE goals;
DROP TABLE evaluation;
DROP TABLE preferences;
DROP TABLE Employee;
DROP TABLE media_manager;
DROP TABLE media_planner;
DROP TABLE report_data;
DROP TABLE reports;




CREATE TABLE User_
				(email VARCHAR(40),
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
				
				
CREATE TABLE preferences
				(
                indicator1 VARCHAR(10),
                indicator2 VARCHAR(10),
                indicator3 VARCHAR(10),
                indicator4 VARCHAR(10),
                indicator5 VARCHAR(10),
                stat_indicator1 VARCHAR(10),
                stat_indicator2 VARCHAR(10),
                stat_indicator3 VARCHAR(10),
                Company_name VARCHAR(20),
                email VARCHAR(20),
				FOREIGN KEY (email) REFERENCES client_(email),
                PRIMARY KEY(Company_name)
                );
CREATE TABLE report_data
				(
                Cl1 VARCHAR(20),
                Cl2 VARCHAR(20),
                Quatra VARCHAR(20),
                Years VARCHAR(20),
                specific_data VARCHAR(20),
                PRIMARY KEY(specific_data)
                );
                
CREATE TABLE reports
				(
                reports_id VARCHAR(20),
                size DOUBLE,
                indicators VARCHAR(10),
                date_ DATE,
                type_ VARCHAR(20),
                employee_id INTEGER(11),
                specific_data VARCHAR(20),
                PRIMARY KEY(reports_id),
                FOREIGN KEY(employee_id) REFERENCES employee(employee_id),
                FOREIGN KEY(specific_data) REFERENCES report_data(specific_data)
                );
                
CREATE TABLE evaluation
				(
                email VARCHAR(20),
                reports INTEGER(11),
		r_report1 INTEGER(11)
		r_report2 INTEGER(11)
		r_report3 INTEGER(11)
		r_report4 INTEGER(11)
		r_report5 INTEGER(11)
                staff INTEGER(11),
		s_report1 INTEGER(11)
		s_report2 INTEGER(11)
		s_report3 INTEGER(11)
		s_report4 INTEGER(11)
		s_report5 INTEGER(11)		
                goals INTEGER(11),
		g_report1 INTEGER(11)
		g_report2 INTEGER(11)
		g_report3 INTEGER(11)
		g_report4 INTEGER(11)
		g_report5 INTEGER(11)
                Farewell INTEGER(11),
                Extra_Feedback VARCHAR(100),
                FOREIGN KEY(email) REFERENCES client_(email)
                );
CREATE TABLE goals
				(
                email VARCHAR(20),
                target_goals1 INTEGER(11),
                target_goals2 INTEGER(11),
                target_goals3 INTEGER(11),
                target_goals4 INTEGER(11),
                target_goals5 INTEGER(11),
                report_id INTEGER(11),
                goald_id INTEGER(11), 
                FOREIGN KEY(email) REFERENCES client_(email)
                );

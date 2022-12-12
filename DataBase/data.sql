use ismgroup60;

Insert INTO User_(email,passwrd,sex,elname,efname) 
			Values('admin@gmail.com',123456,'male','admin','-');
            
Insert INTO User_(email,passwrd,sex,elname,efname) 
			Values('Vodafone@gmail.com',1234567,'male','Vodafone','-');
            
Insert INTO Client_(campaign,Company_name,email)
			Values('Spring','Vodafone','Vodafone@gmail.com');

Insert INTO employee(employee_id,email) 
			Values('12345','admin@gmail.com');



insert into user_ (email,passwrd,personal_name)
	values("sts@gmail.com","123456","Stelios");
    
insert into indicators(ind1,ind2,ind3,ind4,reports_id)
		Values(5.0,6.0,7.0,8.0,"1");
insert into indicators(ind1,ind2,ind3,ind4,reports_id)
		Values(9.0,10.0,11.0,12.0,"1");

Insert into reports (reports_id,email)
	Values("1","sts@gmail.com");
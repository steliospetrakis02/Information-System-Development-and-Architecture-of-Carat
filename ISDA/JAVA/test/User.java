package test;
public class User {
    
   private String email;
   private String password;
   private String personal_name;



public User(String email, String password , String personal_name) {
        this.email = email;
        this.password = password;
        this.personal_name = personal_name;
       

   }

   public String getEmail() {
       return email;
   }
   public String getPassword() {
       return password;
   }
   public String get_personal_name() {
       return personal_name;
   }
  

}

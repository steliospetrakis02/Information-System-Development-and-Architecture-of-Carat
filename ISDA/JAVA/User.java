
public class User {
    
   private String email;
   private String password;
   private String sex;
   private String elname;
   private String efname;


public User(String email, String password , String sex,String elname , String efname) {
        this.email = email;
        this.password = password;
        this.sex = sex;
        this.elname = elname;
        this.efname = efname;

   }

   public String getEmail() {
       return email;
   }
   public String getPassword() {
       return password;
   }
   public String getSex() {
       return sex;
   }
   public String getElname() {
       return elname;
   }
   public String getEfname() {
       return efname;
   }

}

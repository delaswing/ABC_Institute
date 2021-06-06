
package timeallocation;

public class User {

    private int id;
    private String lname;
    private int group;
    private float sgroup;
    private int sid;
    private float time;
    
    
      public User(int Id, String Lname ,int Group, float Sgroup, int Sid,float Time )
    {
        this.id = Id;
        this.lname = Lname;
        this.group = Group;
        this.sgroup= Sgroup;
        this.sid = Sid;
        this.time = Time;
        
    }

    User(int aInt, String string, int aInt0, float aFloat, int aInt1) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      
       public int  getId(){
        return id;
    }
     
      public String getLname(){
        return lname;
    }
      
       public int getGroup(){
        return group;
    }
      
       public float getSgroup(){
        return sgroup;
    }
       
        public int getSid(){
        return id;
    }
        
     public float getTime(){
        return time;
    }
       
}

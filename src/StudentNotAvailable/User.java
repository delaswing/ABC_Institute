
package StudentNotAvailable;

public class User {
    
     private int id;
    private int group;
    private float sgroup;
    private int sid;
    private float time;
    
      public User(int Id, int Group, float Sgroup, int Sid,float Time )
    {
        this.id = Id;
        this.group = Group;
        this.sgroup= Sgroup;
        this.sid = Sid;
        this.time = Time;
        
    }

       public int  getId(){
        return id;
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

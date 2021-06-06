/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notavailable;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;

/**
 *
 * @author One
 */
public class User {

     private int id;
    private int room;
    private int day;
    private float stime;
    private float etime;
   
     public User(int Id, int Room ,int Day, float Stime, float Etime)
    {
        this.id = Id;
        this.room = Room;
        this.day = Day;
        this.stime = Stime;
        this.etime= Etime;
        
    }

  

     public int  getId(){
        return id;
    }
     
      public int getRoom(){
        return room;
    }
      
       public int getDay(){
        return day;
    }
      
       public float getStime(){
        return stime;
    }
       
        public float getEtime(){
        return etime;
    }
       
}


package db;

import java.sql.Connection;
import java.sql.DriverManager;


public class db_con {
    
    private Connection con;
    private static db_con dbc;
    private int a = 0;
    public db_con(){
        
      
          }
    
    public static db_con getDataBaseConnection(){
        if(dbc==null){
            dbc=new db_con();
        }
        return dbc;
    }
    
     public Connection getConnection(){
        try{
            
                con= DriverManager.getConnection("jdbc:mysql://localhost:3306/itpm","root","");
             System.out.println("Connection Successful");
             return con;
        } catch(Exception ex){
            System.out.println(ex);
            return null;
        }
    }
}

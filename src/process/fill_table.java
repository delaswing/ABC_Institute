
package process;

import control.day_details;
import db.db_con;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author ACER
 */
public class fill_table {
    private Connection connect;
    private Statement st;
    private ResultSet rs;
    
    
    public ArrayList ListUsers(day_details dd)
    {
        int lec_id = dd.getL_id();
        db_con con = new db_con();
        connect = con.getConnection();
        ArrayList<fill_table.User> list = new ArrayList<>();
        try{
            String sql = "SELECT a.mon,a.sun,a.tue,a.thur,a.fri,a.wed,a.sat,b.time_hour FROM day_details a "
                    + " LEFT JOIN time_details b ON a.l_id = b.l_id"
                    + " WHERE a.l_id = "+lec_id;
            st=connect.createStatement();
            rs=st.executeQuery(sql);
            
            int result_rows = 0;
            
            
            
            
            
                int mon = 0;
                int sun = 0;
                int tue= 0;
                int thur = 0;
                int wed = 0;
                int fri = 0;
                int sat = 0;
                String mon_work = "Not Work";
                String sun_work  = "Not Work";
                String tue_work = "Not Work";
                String thur_work  = "Not Work";
                String wed_work  = "Not Work";
                String fri_work  = "Not Work";
                String sat_work  = "Not Work";
                int time = 0;

                while(rs.next()){
                    mon=rs.getInt("mon");
                    sun=rs.getInt("sun");
                    tue=rs.getInt("tue");
                    thur=rs.getInt("thur");
                    wed=rs.getInt("wed");
                    fri=rs.getInt("fri");
                    sat=rs.getInt("sat");
                    time = rs.getInt("time_hour");
                    result_rows++;

                }
            if(result_rows > 0){
                int tot = 8;
                //int other = tot - time;

                if(mon == 1){
                    mon_work = "Work";
                }
                if(sun == 1){
                    sun_work = "Work";
                }
                if(tue == 1){
                    tue_work = "Work";
                }
                if(thur == 1){
                    thur_work = "Work";
                }
                if(wed == 1){
                    wed_work = "Work";
                }
                if(fri == 1){
                    fri_work = "Work";
                }
                if(sat == 1){
                    sat_work = "Work";
                }





                for(int a = 0;a<time;a++){
                    String time_a = "";
                    switch (a) {
                        case 0:
                            time_a = "8.30-9.30";
                            break;
                        case 1:
                            time_a = "9.30-10.30";
                            break;
                        case 2:
                            time_a = "10.30-11.30";
                            break;
                        case 3:
                            time_a = "11.30-12.30";
                            break;
                        case 4:
                            time_a = "12.30-13.30";
                            break;
                        case 5:
                            time_a = "13.30-14.30";
                            break;
                        case 6:
                            time_a = "14.30-15.30";
                            break;
                        case 7:
                            time_a = "15.30-16.30";
                            break;
                        case 8:
                            time_a = "16.30-17.30";
                            break;
                        default:
                            break;
                    }

                    fill_table.User u1 = new fill_table.User(time_a,mon_work,tue_work,wed_work,thur_work,fri_work,sat_work,sun_work);
                    list.add(u1);
                }

                for(int a = time;a<=tot;a++){
                    String time_a = "";
                    switch (a) {
                        case 0:
                            time_a = "8.30-9.30";
                            break;
                        case 1:
                            time_a = "9.30-10.30";
                            break;
                        case 2:
                            time_a = "10.30-11.30";
                            break;
                        case 3:
                            time_a = "11.30-12.30";
                            break;
                        case 4:
                            time_a = "12.30-13.30";
                            break;
                        case 5:
                            time_a = "13.30-14.30";
                            break;
                        case 6:
                            time_a = "14.30-15.30";
                            break;
                        case 7:
                            time_a = "15.30-16.30";
                            break;
                        case 8:
                            time_a = "16.30-17.30";
                            break;
                        default:
                            break;
                    }

                    fill_table.User u1 = new fill_table.User(time_a,"Not Work","Not Work","Not Work","Not Work","Not Work","Not Work","Not Work");
                    list.add(u1);
                }

                return list;
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
            return list;
        }
        
        return list;
        
    }

    public class User {
        public String mon;
        public String time;
        public String tue;
        public String wed;
        public String thur;
        public String fri;
        public String sat;
        public String sun;
        public User(String time, String mon, String tue, String wed,String thur,String fri,String sat,String sun) {
            this.time = time;
            this.mon = mon;
            this.tue = tue;
            this.wed = wed;
            this.thur = thur;
            this.fri = fri;
            this.sat = sat;
            this.sun = sun;
        }
    }
}

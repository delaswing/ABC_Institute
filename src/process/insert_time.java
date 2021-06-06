
package process;

import control.day_details;
import control.time_details;
import db.db_con;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ACER
 */
public class insert_time {
    private Connection connect;
    private PreparedStatement pst;
    private int output_1;
    private int output_2;
    
    public int insert_table(time_details td,day_details dd) throws SQLException{
        
        int a = 0;
        
        int no_date = td.getNo_date();
        int hour = td.getTime_hour();
        int min = td.getTime_min();
        int lec = td.getL_id();
        
        int sun = dd.getSun();
        int sat = dd.getSat();
        int fri = dd.getFri();
        int thur = dd.getThur();
        int wed = dd.getWed();
        int tue = dd.getTue();
        int mon = dd.getMon();
        
        db_con con = new db_con();
        connect = con.getConnection();
        
        String time_sql = "INSERT INTO `time_details`(`no_date`, `time_hour`, `time_min`, `l_id`) VALUES (?,?,?,?)";
        pst = connect.prepareStatement(time_sql);
        pst.setInt(1, no_date);
        pst.setInt(2, hour);
        pst.setInt(3, min);
        pst.setInt(4, lec);
        output_1 = pst.executeUpdate();
        
        String day_sql = "INSERT INTO `day_details`( `mon`, `l_id`, `tue`, `wed`, `thur`, `fri`, `sat`, `sun`) VALUES (?,?,?,?,?,?,?,?)";
        pst = connect.prepareStatement(day_sql);
        pst.setInt(1, mon);
        pst.setInt(2, lec);
        pst.setInt(3, tue);
        pst.setInt(4, wed);
        pst.setInt(5, thur);
        pst.setInt(6, fri);
        pst.setInt(7, sat);
        pst.setInt(8, sun);
        output_2 = pst.executeUpdate();
        
        if(output_1 > 0 && output_2 > 0){
            a = 1;
        }
        
        
        return a;
    }
}


package process;

import control.day_details;
import control.time_details;
import db.db_con;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ACER
 */
public class delete_fun {
    private Connection connect;
    private PreparedStatement pst;
    private int output_1;
    private int output_2;
    
    public int delet_table(day_details dd)throws SQLException{
        
        int l_id = dd.getL_id();
        db_con con = new db_con();
        connect = con.getConnection();
        
        String delete_sql_1 = "DELETE FROM `time_details` WHERE`l_id` = ?";
        String delete_sql_2 = "DELETE FROM `day_details` WHERE`l_id` = ?";
        
        pst = connect.prepareStatement(delete_sql_1);
        pst.setInt(1, l_id);
        output_1 = pst.executeUpdate();
        
        pst = connect.prepareStatement(delete_sql_2);
        pst.setInt(1, l_id);
        output_2 = pst.executeUpdate();
        
        if(output_1 > 0 && output_2 > 0){
             return 1;
        }
        
        return 0;
    }
}

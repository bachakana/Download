/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fifak
 */
public class UserDal extends DBContext {

    public int insert_User(String fullname, Date birthDate) {

        try {
            java.sql.Date sqlDate = new java.sql.Date(birthDate.getTime());
            connection.setAutoCommit(false);
            int result = 0;
            String sql = "INSERT INTO [User]\n"
                    + "           ([user_fullname]\n"
                    + "           ,[birthdate]\n"
                    + "           ,[is_admin])\n"
                    + "     VALUES\n"
                    + "           ('" + fullname + "'\n"
                    + "           ,'" + sqlDate + "'\n"
                    + "           ,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.executeUpdate();
            String uid = "SELECT @@IDENTITY as uid";
            PreparedStatement stm_uid = connection.prepareStatement(uid);
            ResultSet rs = stm_uid.executeQuery();
            if (rs.next()) {
                result = rs.getInt("uid");
            }
            connection.commit();
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(UserDal.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                return -1;
            }
        }
        return -1;

    }

}

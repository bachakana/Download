/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fifak
 */
public class DownloadDal extends DBContext {

    public int DownloadTimeLeftInCurrentDay(int userId) {
        try {
            String sql = "SELECT COUNT([user_id]) as time_download\n"
                    + "  FROM [Download]\n"
                    + "  where user_id=" + userId + " and DAY(download_date)=DAY(GETDATE()) and MONTH(download_date)=MONTH(GETDATE()) and Year(download_date)=Year(GETDATE())";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return (5 - rs.getInt("time_download"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DownloadDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public int InsertDownload(String file_id, int user_id) {
        try {

            String sql = "INSERT INTO [dbo].[Download]\n"
                    + "           ([file_id]\n"
                    + "           ,[user_id]\n"
                    + "           ,[download_date])\n"
                    + "     VALUES\n"
                    + "           (" + file_id + "\n"
                    + "           ," + user_id + "\n"
                    + "           ,GETDATE())";
            PreparedStatement stm = connection.prepareStatement(sql);
            int rs = stm.executeUpdate();
            if (rs > 0) {
                return rs;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DownloadDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

}

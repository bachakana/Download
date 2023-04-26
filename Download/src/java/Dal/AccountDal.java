/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Account;
import Model.User;

/**
 *
 * @author fifak
 */
public class AccountDal extends DBContext {

    public Account getAccountByUsernamePassword(String account, String password) {
        try {
            String sql = "SELECT a.[account]\n"
                    + "      ,a.[password]\n"
                    + "      ,a.[user_id]\n"
                    + "	  ,u.user_fullname\n"
                    + "	  ,u.birthdate\n"
                    + "	  ,u.is_admin\n"
                    + "  FROM [Account] a\n"
                    + "  join [User] u on a.user_id=u.user_id where a.account='" + account + "' and a.password='" + password + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUser_id(rs.getInt("user_id"));
                u.setUser_fullname(rs.getString("user_fullname"));
                java.util.Date utilDate = new java.util.Date(rs.getDate("birthdate").getTime());
                u.setBirthdate(utilDate);
                u.setIs_admin(rs.getBoolean("is_admin"));
                return new Account(account, password, u);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    public boolean AccountExist(String account) {
        try {
            String sql = "SELECT u.user_id\n"
                    + "FROM Account a\n"
                    + "JOIN [User] u ON a.user_id = u.user_id\n"
                    + "where a.account ='" + account + "'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }

    public int insert_account(String account, String password, int uid) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([account]\n"
                    + "           ,[password]\n"
                    + "           ,[user_id])\n"
                    + "     VALUES\n"
                    + "           ('"+account+"'\n"
                    + "           ,'"+password+"'\n"
                    + "           ,"+uid+")\n";
                    
            PreparedStatement stm = connection.prepareStatement(sql);
            int rs = stm.executeUpdate();
            return rs;
        } catch (SQLException ex) {
            return -1;
        }
    }
}

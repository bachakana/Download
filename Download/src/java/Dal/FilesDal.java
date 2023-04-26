/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.Files;

/**
 *
 * @author fifak
 */
public class FilesDal extends DBContext {

    public ArrayList<Model.Files> gettop5dowloadFiles() {
        ArrayList<Model.Files> top5files = new ArrayList<>();
        try {
            String sql = "SELECT TOP (5) [file_id]\n"
                    + "      ,[file_name]\n"
                    + "      ,[file_desc]\n"
                    + "      ,[file_url]\n"
                    + "      ,[file_add_on]\n"
                    + "      ,[file_download_time]\n"
                    + "      ,[type]\n"
                    + "  FROM [Files]\n"
                    + "  order by [file_download_time] desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Files f = new Files();
                f.setFile_id(rs.getInt("file_id"));
                f.setFile_name(rs.getString("file_name"));
                f.setFile_desc(rs.getString("file_desc"));
                f.setFile_url(rs.getString("file_url"));
                java.util.Date utilDate = new java.util.Date(rs.getDate("file_add_on").getTime());
                f.setFile_add_on(utilDate);
                f.setFile_download_time(rs.getInt("file_download_time"));
                f.setType(rs.getString("type"));
                top5files.add(f);
            }
            return top5files;
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Model.Files> gettop6NoonedowloadFiles() {
        ArrayList<Model.Files> top5files = new ArrayList<>();
        try {
            String sql = "SELECT TOP (6) [file_id]\n"
                    + "      ,[file_name]\n"
                    + "      ,[file_desc]\n"
                    + "      ,[file_url]\n"
                    + "      ,[file_add_on]\n"
                    + "      ,[file_download_time]\n"
                    + "      ,[type]\n"
                    + "  FROM [Files]\n"
                    + "  order by [file_download_time] asc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Files f = new Files();
                f.setFile_id(rs.getInt("file_id"));
                f.setFile_name(rs.getString("file_name"));
                f.setFile_desc(rs.getString("file_desc"));
                f.setFile_url(rs.getString("file_url"));
                java.util.Date utilDate = new java.util.Date(rs.getDate("file_add_on").getTime());
                f.setFile_add_on(utilDate);
                f.setFile_download_time(rs.getInt("file_download_time"));
                f.setType(rs.getString("type"));
                top5files.add(f);
            }
            return top5files;
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Model.Files> searchFile(String txtSearch) {
        ArrayList<Model.Files> searchFiles = new ArrayList<>();
        try {
            String sql = "SELECT [file_id]\n"
                    + "      ,[file_name]\n"
                    + "      ,[file_desc]\n"
                    + "      ,[file_url]\n"
                    + "      ,[file_add_on]\n"
                    + "      ,[file_download_time]\n"
                    + "      ,[type]\n"
                    + "  FROM [Files]\n"
                    + "  where file_name like'" + txtSearch + "%'"
                    + "";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Files f = new Files();
                f.setFile_id(rs.getInt("file_id"));
                f.setFile_name(rs.getString("file_name"));
                f.setFile_desc(rs.getString("file_desc"));
                f.setFile_url(rs.getString("file_url"));
                java.util.Date utilDate = new java.util.Date(rs.getDate("file_add_on").getTime());
                f.setFile_add_on(utilDate);
                f.setFile_download_time(rs.getInt("file_download_time"));
                f.setType(rs.getString("type"));
                searchFiles.add(f);
            }
            return searchFiles;
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Model.Files> getFilewithType(String type) {
        ArrayList<Model.Files> searchFiles = new ArrayList<>();
        try {
            String sql = "SELECT [file_id]\n"
                    + "      ,[file_name]\n"
                    + "      ,[file_desc]\n"
                    + "      ,[file_url]\n"
                    + "      ,[file_add_on]\n"
                    + "      ,[file_download_time]\n"
                    + "      ,[type]\n"
                    + "  FROM [Files]\n"
                    + "  where type like'" + type + "'"
                    + "";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Files f = new Files();
                f.setFile_id(rs.getInt("file_id"));
                f.setFile_name(rs.getString("file_name"));
                f.setFile_desc(rs.getString("file_desc"));
                f.setFile_url(rs.getString("file_url"));
                java.util.Date utilDate = new java.util.Date(rs.getDate("file_add_on").getTime());
                f.setFile_add_on(utilDate);
                f.setFile_download_time(rs.getInt("file_download_time"));
                f.setType(rs.getString("type"));
                searchFiles.add(f);
            }
            return searchFiles;
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String getFileLinkDownloadWithId(String fileid) {
        try {
            String sql = "SELECT \n"
                    + "      [file_url]\n"
                    + "  FROM [Files]\n"
                    + "where file_id=" + fileid + "";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getString("file_url");
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int updateFiledownloadtime(String file_id) {
        try {
            String sql = "UPDATE [dbo].[Files]\n"
                    + "   SET [file_download_time] = [file_download_time]+1\n"
                    + " WHERE file_id=" + file_id + "";
            PreparedStatement stm = connection.prepareStatement(sql);
            int rs = stm.executeUpdate();
            if (rs > 0) {
                return rs;
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilesDal.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author fifak
 */
public class Files {

    private int file_id;
    private String file_name;
    private String file_desc;
    private String file_url;
    private Date file_add_on;
    private int file_download_time;
    private String type;

    public Files() {
    }

    public Files(int file_id, String file_name, String file_desc, String file_url, Date file_add_on, int file_download_time, String type) {
        this.file_id = file_id;
        this.file_name = file_name;
        this.file_desc = file_desc;
        this.file_url = file_url;
        this.file_add_on = file_add_on;
        this.file_download_time = file_download_time;
        this.type = type;
    }

    public int getFile_id() {
        return file_id;
    }

    public void setFile_id(int file_id) {
        this.file_id = file_id;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getFile_desc() {
        return file_desc;
    }

    public void setFile_desc(String file_desc) {
        this.file_desc = file_desc;
    }

    public String getFile_url() {
        return file_url;
    }

    public void setFile_url(String file_url) {
        this.file_url = file_url;
    }

    public Date getFile_add_on() {
        return file_add_on;
    }

    public void setFile_add_on(Date file_add_on) {
        this.file_add_on = file_add_on;
    }

    public int getFile_download_time() {
        return file_download_time;
    }

    public void setFile_download_time(int file_download_time) {
        this.file_download_time = file_download_time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

   
    

}

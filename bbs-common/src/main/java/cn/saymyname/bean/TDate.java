package cn.saymyname.bean;

import java.io.Serializable;
import java.util.Date;

public class TDate implements Serializable {
    private static final long serialVersionUID = -4369213646188530195L;

    private int id;
    private Date createTime;
    private String dateStr;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getDateStr() {
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }
}

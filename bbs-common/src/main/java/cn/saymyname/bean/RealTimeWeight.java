package cn.saymyname.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class RealTimeWeight implements Serializable {
    private static final long serialVersionUID = 5723222588079941700L;

    private int id;
    private String dateStr;
    private BigDecimal weight;
    private Date createTime;
    private BigDecimal waist;
    private Integer userId;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDateStr() {
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public BigDecimal getWaist() {
        return waist;
    }

    public void setWaist(BigDecimal waist) {
        this.waist = waist;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}

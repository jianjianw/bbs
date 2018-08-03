package cn.saymyname.bean;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class RealTimeWeight implements Serializable {
    private static final long serialVersionUID = 5723222588079941700L;

    private int id;
    private String dateStr;
    private BigDecimal weigth;
    private Date createTime;

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

    public BigDecimal getWeigth() {
        return weigth;
    }

    public void setWeigth(BigDecimal weigth) {
        this.weigth = weigth;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}

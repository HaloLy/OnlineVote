package cn.zcw.vote.entity;

import java.io.Serializable;

public class UP implements Serializable {
	
	private static final long serialVersionUID = 5563196805457977349L;

	private Integer id;

    private Integer uid;

    private Integer pid;

    private Integer item;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getItem() {
        return item;
    }

    public void setItem(Integer item) {
        this.item = item;
    }
}
package com.garfield.worktable.domain;


import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "prod_calendar")
public class ProdCalendar {
    private int id;
    private Date date;
    private Staff staff;
    private Mark mark;

    public ProdCalendar() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    @ManyToOne(optional=false, cascade= CascadeType.ALL)
    @JoinColumn(name = "id_staff")
    public Staff getStaff() {
        return staff;
    }
    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    @ManyToOne(optional=false, cascade=CascadeType.ALL)
    @JoinColumn(name = "id_mark")
    public Mark getMark() {
        return mark;
    }
    public void setMark(Mark mark) {
        this.mark = mark;
    }

    @Override
    public String toString() {
        return "ProdCalendar{" +
                "id=" + id +
                ", date=" + date +
                ", staff=" + staff +
                ", mark=" + mark +
                '}';
    }
}

package com.garfield.worktable.domain;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "mark")
public class Mark {
    private int id;
    private String code;
    private String comment;
    private Set<ProdCalendar> prodCalendars;

    public Mark() {}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }

    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }

    @OneToMany(mappedBy = "mark", fetch = FetchType.EAGER)
    public Set<ProdCalendar> getProdCalendars() {
        return prodCalendars;
    }
    public void setProdCalendars(Set<ProdCalendar> prodCalendars) {
        this.prodCalendars = prodCalendars;
    }

    @Override
    public String toString() {
        return "code='" + code + '\'' +
                '}';
    }
}


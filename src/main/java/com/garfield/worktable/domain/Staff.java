package com.garfield.worktable.domain;


import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "staff")
public class Staff {
    private int id;
    private String name;
    private String position;
    private String table_number;
    private Department department;
    private Set<ProdCalendar> prodCalendars;

    public Staff() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }
    public void setPosition(String position) {
        this.position = position;
    }

    public String getTable_number() {
        return table_number;
    }
    public void setTable_number(String table_number) {
        this.table_number = table_number;
    }

    @ManyToOne
    @JoinColumn(name = "id_dep")
    public Department getDepartment() {
        return department;
    }
    public void setDepartment(Department department) {
        this.department = department;
    }

    @OneToMany(mappedBy = "staff", fetch = FetchType.EAGER)
    public Set<ProdCalendar> getProdCalendars() {
        return prodCalendars;
    }
    public void setProdCalendars(Set<ProdCalendar> prodCalendars) {
        this.prodCalendars = prodCalendars;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "name='" + name + '\'' +
                ", department=" + department +
                '}';
    }
}

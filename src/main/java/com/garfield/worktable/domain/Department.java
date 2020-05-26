package com.garfield.worktable.domain;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "department")
public class Department {

    private int id;
    private String name;
    private List<Staff> staffList;

    public Department() {}

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
    @OneToMany(mappedBy = "department")
    public List<Staff> getStaffList() {
        return staffList;
    }
    public void setStaffList(List<Staff> staffList) {
        this.staffList = staffList;
    }

    @Override
    public String toString() {
        return "Department: id = " + this.id+", name = "+ this.name;
    }
}

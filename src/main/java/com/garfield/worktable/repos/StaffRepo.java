package com.garfield.worktable.repos;

import com.garfield.worktable.domain.Department;
import com.garfield.worktable.domain.Staff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import java.util.List;

@EnableJpaRepositories
public interface StaffRepo extends JpaRepository<Staff, Long> {
    List<Staff> findByDepartment(Department department);
}
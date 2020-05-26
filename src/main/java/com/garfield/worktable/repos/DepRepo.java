package com.garfield.worktable.repos;

import com.garfield.worktable.domain.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories
public interface DepRepo extends JpaRepository<Department, Long> {
    @Query("select u from Department u  where u.id = :i")
    Department findById(Integer i);
}

package com.garfield.worktable.repos;

import com.garfield.worktable.domain.ProdCalendar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.List;

@EnableJpaRepositories
public interface ProdCalRepo extends JpaRepository<ProdCalendar, Long> {
     @Query("select u from ProdCalendar u where u.staff.department.id = :depId")
     List<ProdCalendar> findByDepartment(Integer depId);
}

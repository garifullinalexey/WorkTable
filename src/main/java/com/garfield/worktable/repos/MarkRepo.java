package com.garfield.worktable.repos;

import com.garfield.worktable.domain.Mark;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
@EnableJpaRepositories
public interface MarkRepo extends CrudRepository<Mark, Long> {
}

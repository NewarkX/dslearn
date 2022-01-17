package com.devsuperior.dslearnbds.repositories;

import com.devsuperior.dslearnbds.entities.Course;
import com.devsuperior.dslearnbds.entities.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LessonRespository extends JpaRepository<Lesson, Long> {
}

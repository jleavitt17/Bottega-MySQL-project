use Bottega_database_schema;


SELECT professors_name AS 'Professor', AVG(grade) AS 'Average Grade'
FROM professors
JOIN grades 
ON grade_professor_id = professors_id
GROUP BY professors_name;


SELECT MAX(grade) AS 'Highest Grade' , student_name
FROM grades
JOIN students
ON student_id = grades_id
GROUP BY grade_student_id;


SELECT student_name AS 'Student Name', c1.course_name AS 'First Class'
FROM students
RIGHT JOIN courses c1
ON c1.course_id = student_course1_id
LEFT JOIN courses c2
ON c2.course_id = student_course2_id
GROUP BY student_id;


SELECT student_name AS 'Student Name', c2.course_name AS 'Second Class'
FROM students
RIGHT JOIN courses c1
ON c1.course_id = student_course1_id
RIGHT JOIN courses c2
ON c2.course_id = student_course2_id
GROUP BY student_id;


SELECT course_name AS 'Course', AVG(grade) AS 'Average Grade'
FROM professors
JOIN grades 
ON grade_professor_id = professors_id
JOIN courses
ON course_id = grade_course_id
GROUP BY course_name
ORDER BY AVG(grade) ASC;


SELECT student_name AS 'Student', p1.professors_id AS 'First Professor', p2.professors_id AS 'Second Professor'
FROM students
JOIN professors p1
ON p1.professors_id = student_professor1_id
JOIN professors p2
ON p2.professors_id = student_professor2_id
WHERE(p1.professors_id = p2.professors_id);


SELECT COUNT(*)
FROM students
JOIN professors p1
ON p1.professors_id = student_professor1_id
JOIN professors p2
ON p2.professors_id = student_professor2_id
WHERE(p1.professors_id = p2.professors_id);
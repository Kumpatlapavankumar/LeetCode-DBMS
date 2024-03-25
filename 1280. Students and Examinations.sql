# Write your MySQL query statement below
SELECT St.student_id,St.student_name,Sub.subject_name, COUNT(Exam.subject_name) AS attended_exams
FROM Students as st
JOIN Subjects as sub
LEFT JOIN Examinations as exam
ON St.student_id = Exam.student_id
AND Sub.subject_name = Exam.subject_name
GROUP BY St.student_id, Sub.subject_name
ORDER BY student_id ASC, subject_name ASC

class Course < ApplicationRecord
  belongs_to :teacher
  has_many :course_students
  has_many :students, through: :course_students
  has_many :tests


  #2)
  def self.programming_students_course
    Course.where(name: "Programacion").first.students
  end


  #4)
  def self.students_average_by_course

    Course.joins(tests: [student_tests: [:student]])
          .select("courses.name, AVG(score), students.first_name")
          .group("courses.name, students.first_name")
          .order("students.first_name")

  end

  #5
  def self.students_in_red

    sql = "SELECT foo.first_name
    FROM (

    SELECT courses.name , COUNT(score < 5) as red ,AVG(score) as avg, students.first_name 
    FROM courses 
    INNER JOIN tests ON tests.course_id = courses.id 
    INNER JOIN student_tests ON student_tests.test_id = tests.id 
    INNER JOIN students ON students.id = student_tests.student_id 
    GROUP BY courses.name, students.first_name 
    ORDER BY students.first_name


    )
      AS foo GROUP BY foo.avg, foo.name , foo.red ,foo.first_name HAVING (avg < 5 and red > 1)"

    Course.connection.execute(sql).getvalue(0,0)

  end

end

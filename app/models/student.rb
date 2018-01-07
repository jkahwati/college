class Student < ApplicationRecord
  has_many :course_students
  has_many :courses, through: :course_students
  has_many :student_tests


  def calculate_score_in_course course_id

    StudentTest.joins(:student, test: [:course])
               .where("courses.id = ? and students.id = ?",course_id,self.id)
               .select("AVG(score) as average, courses.name, students.first_name , students.last_name")
               .group("courses.name, students.first_name, students.last_name")

  end



end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Teacher.create(first_name: 'Carlos', last_name: "Perez" ) #1
Teacher.create(first_name: 'Jose', last_name: "Delgado" ) #2
Teacher.create(first_name: 'Maria', last_name: "Cabello" ) #3
Teacher.create(first_name: 'Michael', last_name: "Rodruiguez" )#4
Teacher.create(first_name: 'Susana', last_name: "Haboub" ) #5


Course.create(name: "Programacion", teacher_id: 2 )
Course.create(name: "Estructuras", teacher_id: 2 )
Course.create(name: "Lenguaje", teacher_id: 3 )
Course.create(name: "Tecnicas", teacher_id: 4 )
Course.create(name: "TGS", teacher_id: 5 )
Course.create(name: "Investigacion", teacher_id: 5 )



Test.create(name: "jdu", course_id: "1")
Test.create(name: "ter", course_id: "1")
Test.create(name: "erj", course_id: "1")
Test.create(name: "dfj", course_id: "2")
Test.create(name: "pdf", course_id: "3")
Test.create(name: "dfd", course_id: "4")


Student.create(first_name: 'Rodrigo', last_name: "Perez" ) #1
Student.create(first_name: 'Carmen', last_name: "Kahwati" ) #2
Student.create(first_name: 'Carlos', last_name: "Jimienez" ) #3
Student.create(first_name: 'Michael', last_name: "James" ) #4
Student.create(first_name: 'Susan', last_name: "Haboub" ) #5
Student.create(first_name: 'Jhon', last_name: "Delgado" ) #6
Student.create(first_name: 'Jaime', last_name: "Delgado" ) #7
Student.create(first_name: 'Junior', last_name: "Cabello" ) #8
Student.create(first_name: 'Ainhoa', last_name: "Ceballo" ) #9
Student.create(first_name: 'Jenny', last_name: "zuckenberg" ) #10
Student.create(first_name: 'Nadia', last_name: "Porcin" ) #11
Student.create(first_name: 'Karlyn', last_name: "Bobin" ) #12
Student.create(first_name: 'Pablo', last_name: "Loyal" ) #13
Student.create(first_name: 'Georges', last_name: "Love" ) #14
Student.create(first_name: 'Gladys', last_name: "Peace" ) #15


CourseStudent.create(course_id: "1" , student_id: "1")
CourseStudent.create(course_id: "1" , student_id: "2")
CourseStudent.create(course_id: "1" , student_id: "3")
CourseStudent.create(course_id: "1" , student_id: "4")
CourseStudent.create(course_id: "2" , student_id: "5")
CourseStudent.create(course_id: "2" , student_id: "2")
CourseStudent.create(course_id: "2" , student_id: "1")



StudentTest.create(score: "4", student_id: "1", test_id: "1")
StudentTest.create(score: "6", student_id: "2", test_id: "1")
StudentTest.create(score: "5", student_id: "3", test_id: "1")
StudentTest.create(score: "3", student_id: "4", test_id: "1")
StudentTest.create(score: "8", student_id: "5", test_id: "4")
StudentTest.create(score: "2", student_id: "6", test_id: "4")
StudentTest.create(score: "8", student_id: "1", test_id: "5")













class CreateStudentTests < ActiveRecord::Migration[5.1]
  def change
    create_table :student_tests do |t|
      t.decimal :score
      t.references :student, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end

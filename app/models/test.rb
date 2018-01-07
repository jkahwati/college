class Test < ApplicationRecord
  belongs_to :course
  has_many :student_tests
end

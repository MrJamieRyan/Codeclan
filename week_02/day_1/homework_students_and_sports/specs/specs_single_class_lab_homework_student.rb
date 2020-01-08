require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab_homework.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent <Minitest::Test


def test_get_student_name
  new_student = Student.new("Lauren", "E36")
  assert_equal("Lauren", new_student.student_name)
end


def test_change_cohort
  which_cohort = Student.new("Lauren", "E36")
  assert_equal("E36", which_cohort.cohort)
end


def test_get_student_name
  new_student = Student.new("Lauren", "E36")
  new_student.student_name = "Jamie"
  assert_equal("Jamie", new_student.student_name)
end

def test_change_cohort
  cohort =  Student.new("Lauren", "E36")
  cohort.cohort = "37"
  assert_equal("37", cohort.cohort)
end

def test_student_talk
  new_student = Student.new("Lauren", "E36")
  assert_equal("I can talk", new_student.say)
end

def test_fave_language
new_student = Student.new("Lauren", "E36")
assert_equal("My favourite language is ruby", new_student.fave_language("ruby"))
end
end

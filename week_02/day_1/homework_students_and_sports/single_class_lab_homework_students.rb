class Student

attr_accessor :student_name, :cohort

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort

end

# def student_name (name)
#   @student_name = name
# end

def insert_cohort (cohort)
  @cohort = cohort
end

def change_student_name (name)
  @student_name = name
end

def change_cohort (cohort)
  @cohort = cohort
end

def say()
  return "I can talk"
end

def fave_language(name_of_language)
  return "My favourite language is " + name_of_language
end
end

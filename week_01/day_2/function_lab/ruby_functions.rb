require 'date'

def return_10
  return 10
end

def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def multiply(num_1, num_2)
  num_1 * num_2
end

def divide(num_1, num_2)
  num_1 / num_2
end

def length_of_string(x)
  x.length
end

def join_string(x, y)
  x + y
end

def add_string_as_number(string_1, string_2)
  string_1.to_i + string_2.to_i
end

def number_to_full_month_name(month_num)
  return Date::MONTHNAMES[month_num]
end

def number_to_short_month_name(month_num)
  result = number_to_full_month_name(month_num)
  return result[0,3]
end

def volume_of_cube(x)
  x**3
end

def volume_of_sphere(radius)
  value = (4/3) * Math::PI * (radius**3)
end

def farenheit_to_celsius(temp)
  (temp - 32) * (5/9)
end

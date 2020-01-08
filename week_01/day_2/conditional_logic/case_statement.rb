# p "what is your score?"
# score = gets.chomp.to_i
#
# case score
# when 10
#   p "genius"
# when 8..9
#   p "merit"
# when 5..7
#   p "pass"
# when 4
#   p "resit"
# else
#   "fail"
# end

#
# score = 6
#
# result = score > 5 ?  "pass" : "fail"
#
# p result

katie_hungry = true
katie_tired = true

p "Katie is hangry!" if katie_hungry && katie_tired

katie_tired = false

p "Katie is grumpy" if katie_hungry || katie_tired

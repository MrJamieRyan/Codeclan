my_number = 5
p "What number am I thinking of?"
guess = gets.to_i()

while(true)

  if (guess == my_number)
    p "Yes you got it right"
    break
  end

  if (guess > my_number)
  p "Nope! That's too high...try again"
else (guess < my_number)
  p "Nope! That's too low...try again"
end
p "Try again"
guess = gets.to_i()
end

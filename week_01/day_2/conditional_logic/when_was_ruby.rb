p "When was Ruby created?"
guess = gets.chomp.to_i
if (guess == 1995)
  p "Well done, you really know your Ruby!"
elsif (guess == 1996 || guess == 1994)
  p "Oh you are one year out!"
else
  p "Sorry, that was NOT when Ruby was created"
end

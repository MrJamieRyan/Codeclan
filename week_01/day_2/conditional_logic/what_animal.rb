p "What is your favourite animal?"
animal = gets.chomp.downcase

if (animal == "chicken")
  p "This is my favourite animal too!"
elsif (animal == "kitten")
  p "I love kittens!"
else
  p "Sad, not my favourite.."
end

# Name and Age with User Input    

puts "What is your name?"
n = gets.chomp
puts "What is your age?"
a = gets.chomp.to_i

current_year = 2016

birth_year = current_year - a
puts "#{n} was born in #{birth_year}."
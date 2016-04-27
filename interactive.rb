# interactive story, still in progress



intro= “You’re a traveler on a long journey, choose North or East”

puts intro

direction = gets.chomp.downcase

if direction == "north"
	puts "you go to a village and get stabbed"

elsif direction == "east"
	puts "you find water, catch a parasite, and die"


end
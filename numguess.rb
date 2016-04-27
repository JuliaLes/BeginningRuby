#Number Guessing Game

number = rand(100)


def guess 

	return gets.chomp.to_i
	puts "Guess a number between 1 and 100!"
end

def guess_correctly?(number_to_guess)
	user_guess = guess

	if user_guess == number_to_guess
		puts "Congrats!"
		return true

	elsif user_guess < number_to_guess
		puts "Guess higher!"
		return false
		
	if user_guess > number_to_guess
		puts "Guess lower!"
		return false
	end
end

attempt_number = 0

until guess_correct(number) or attempt_number > 5
	attempt_number += 1
end

if attempt number == 5
	puts "you have failed"
end


# Converting Farenheit to Celsius with User Input


puts "What is the temperature in degrees Farenheit?"
f = gets.chomp.to_f
c = ((f - 32.0) * 5.0/9.0).round(1)   
puts "#{f} degrees Farenheit is equal to #{c} degrees Celsius."


# Calculator
puts "Hi, this is your calculator."

loop do

puts "Please enter the first number."  

num1 = gets.chomp

puts "The first number is #{num1}"

puts "Please enter the second number."

num2 = gets.chomp

puts "The second number is #{num2}"

puts "Enter what you wants to do 1) Add 2) Substract 3) Multiply 4) Divide"

operator = gets.chomp

case operator

when '1'
  answer = num1.to_i + num2.to_i
when '2'
  answer = num1.to_i - num2.to_i
when '3'
  answer = num1.to_i * num2.to_i
when '4'
  answer = num1.to_f / num2.to_f
else
  puts "I have no idea what you want to do."
end

puts "Answer is #{answer}"

puts "Do you want to continue with another calculation?(Y/N)"

repeat = gets.chomp

if repeat != 'Y'
  puts 'Bye!'
  break
end

end

# Rock paper scissor

CHOICES = ['p','r','s']

def user_win(x)
  case x
  when 'p'
    puts "You picked Paper and computer picked Rock. \nPaper wraps rock."
  when 'r'
    puts "You picked Rock and computer picked Scissor. \nRock smashes Scissor."
  when 's'
    puts "You picked Scissor and computer picked Paper. \nScissor cuts Paper."
  end
  puts "You won!"
end

def user_lose(x)
  case x
  when 'p'
    puts "You picked Paper and computer picked Scissor. \nScissor cuts Paper."
  when 'r'
    puts "You picked Rock and computer picked Paper. \nPaper wraps rock."
  when 's'
    puts "You picked Scissor and computer Rock. \nRock smashes Scissor."
  end
  puts "Computer won!"
end

puts "Play Paper Rock Scissor!"

loop do 
  begin
    puts "Choose one: (P/R/S)"
    user_input = gets.chomp
  end until CHOICES.include? (user_input.downcase)

  computer_input = CHOICES.sample

  if(user_input == computer_input)
    puts "Tie game."
  elsif(user_input == 'p')
    if(computer_input == 'r')
      user_win(user_input)
    else user_lose(user_input)
    end
  elsif(user_input == 'r')
    if(computer_input == 's')
      user_win(user_input)
    else user_lose(user_input)
    end
  else #user_input == 's' 
    if(computer_input == 'p')
      user_win(user_input)
    else user_lose(user_input)
    end
  end
  
  puts "Play again?(Y/N)"
  repeat = gets.chomp
  
  if repeat.downcase != 'y'
    puts 'Bye!'
    break
  end

end
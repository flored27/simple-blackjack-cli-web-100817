def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 card = rand(1..11)
 return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  doubleD = deal_card + deal_card
  display_card_total(doubleD)
  return doubleD
end

def hit?(total2)
  prompt_user
  input2 = get_user_input
  if input2 == "s"
    return total2
  elsif input2 == "h"
    newtotal = deal_card + total2
      return newtotal
    else
      invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first = initial_round
  final = hit?(first)
  if final <= 21
    display_card_total(final)
  else
    display_card_total(final)
  end_game(final)
end
end

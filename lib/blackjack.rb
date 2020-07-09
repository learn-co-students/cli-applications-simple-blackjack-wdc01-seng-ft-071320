require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  x = get_user_input
  if x == 's'
   card_total
  elsif x == 'h'
    card_total = deal_card + card_total
     card_total
  else
    invalid_command
    prompt_user
    x = get_user_input
  end
end


# def hit?(card_total)
#   prompt_user
#     x = get_user_input.to_s
#   if x == 's'
#     card_total
#   elsif x == 'h'
#     card_total=deal_card + card_total
#     card_total
#   else
#     invalid_command
#     prompt_user
#   end
#   card_total
# end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  prompt_user
  prompt_user
  deal_card
  display_card_total(card_total)
  
end

require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 user_input = gets.chomp
 user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card 
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit? (curr_total)
    prompt_user
    input = get_user_input
    if input == 'h'
      new_card = deal_card
      sum = curr_total + new_card
    elsif input == 's'
      sum = curr_total
    elsif input != 'h' || input != 's'
      sum = curr_total
      invalid_command
      get_user_input()
      prompt_user
    end
    sum
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  first_total = initial_round
  second_total = 0
  until second_total >= 21 do 
    second_total = hit?(first_total)
    display_card_total(second_total)
  end
end_game(second_total)
end
    

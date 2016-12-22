require 'pry'
require './lib/game'
require './lib/message'

class Battleship

  include Message

  def initialize
    @start_greeting = start_greeting
  end

  def start_greeting
    Message.greeting
    prompt_choices
  end

  def prompt_choices
    user_input = gets.chomp.upcase
    if user_input == "P" || user_input == "PLAY"
      play_option
    elsif user_input == "I" || user_input == "INSTRUCTIONS"
      instruction_option
    elsif user_input == "Q" || user_input == "QUIT"
      quit_option
    else
      Message.invalid_selection
      prompt_choices
    end  
  end

  def play_option
    new_game = Game.new
    new_game.play_game
    puts "Game Over"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    prompt_choices
  end

  def instruction_option
    Message.instruction_message
    prompt_choices
  end

  def quit_option
    puts `clear`
    abort("Goodbye.")
  end

  #timer starts after player enters grid for first shot
  # def timer
  #   start_time = Time.now
  #   finish_time = Time.now
  #   total_time = finish_time - start_time
  #   minutes = total_time / 60
  #   if mins >= 1
  #     puts "Congratulations! You sunk all their Battleships with #{shot_count} shots in only #{minutes.round} minute(s) and #{(total_time % 60).round} second(s)!."
  #   elsif secs >= 0
  #     puts "Congratulations! You sunk all their Battleships with #{shot_count} shots in only #{total_time.round} second(s)!."
  #   end
  # end

end

bs = Battleship.new
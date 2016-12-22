module Message

  def self.greeting
    puts `clear`
    puts "Welcome to BATTLESHIP"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end
  
  def self.invalid_selection
    puts `clear`
    puts "Invalid selection. Please choose either (p)lay, read the (i)nstructions, or (q)uit."
  end

  def self.instruction_message
    puts `clear`
    puts "Follow the prompts to place your ships on your grid."
    puts "After they are submitted you will take turns against the computer trying to guess the coordinates of each others' ships."
    puts "Correct guesses are 'hits' and incorrect are 'misses'."
    puts "When all of a ship's coordinates are guessed correctly, that ship is sunk."
    puts "Continue until you sink all enemy ships."
    puts "Both players will be using two ships on a 4x4 grid."
    puts ""
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.enemy_ships_placed
    puts `clear`
    puts "I have laid out my ships on the grid."
    puts "You now need to layout your two ships."
    puts "The first is two units long and the second is three units long."
    puts "The grid has A1 at the top left and D4 at the bottom right."
    sleep(9)
  end

  def self.enter_grid_for_two_unit_ship
    puts "Enter the coordinates for your two-unit ship (example: A1 A2):"
  end

  def self.enter_grid_for_three_unit_ship
    puts "Enter the coordinates for your three-unit ship (example: C1 C2 C3):"
  end

  def self.your_grid_id
    puts `clear`
    puts "================================="
    puts "            YOUR GRID"
  end

  def self.enemy_grid_id
    puts `clear`
    puts "================================="
    puts "            ENEMY GRID"
  end

end
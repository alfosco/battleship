require './lib/grid'
require './lib/ship'
require 'pry'

class Player

  attr_accessor :own_grid,
                :guess_grid
          
  def initialize
    @own_grid = Grid.new.make_4_x_4_grid
    @guess_grid = Grid.new
  end

  def display_grid(current_grid)
    column_id = ["1", "2", "3", "4"]
    puts "================================="
    print "\t"
    print column_id.join("\t")
    puts
    current_grid.each do |key, value|
      print key
      print "\t"
      print value.join("\t")
      puts
    end
    puts "================================="
  end

  def place_p1_ship_1
    user_input = gets.chomp.upcase
    ship_1_pos_1_hash = {user_input[0] => user_input[1].to_i - 1}
    ship_1_pos_2_hash = {user_input[3] => user_input[4].to_i - 1}
    @own_grid.merge(ship_1_pos_1_hash) do |key, oldval, newval|
      oldval.map! do |item|
        item_index = oldval.index(item)
        if newval == item_index
          item = "S"
        end
      end
    end
    @own_grid.each do |key, value|
      value.map! do |star|
        if star != nil
          star
        else
          star = "*"
        end
      end
    end
    @own_grid.merge(ship_1_pos_2_hash) do |key, oldval_2, newval_2|
      oldval_2.map! do |item|
        item_index = oldval_2.index(item)
        if newval_2 == item_index
          item = "S"
        else
          item
        end
      end
    end
  end

  def place_p1_ship_2
    user_input = gets.chomp.upcase
    ship_1_pos_1_hash = {user_input[0] => user_input[1].to_i - 1}
    ship_1_pos_2_hash = {user_input[3] => user_input[4].to_i - 1}
    ship_1_pos_3_hash = {user_input[7] => user_input[8].to_i - 1}
    @own_grid.merge(ship_1_pos_1_hash) do |key, oldval, newval|
      oldval.map! do |item|
        item_index = oldval.index(item)
        if newval == item_index
          item = "S"
        end
      end
    end
    @own_grid.each do |key, value|
      value.map! do |star|
        if star != nil
          star
        else
          star = "*"
        end
      end
    end
    @own_grid.merge(ship_1_pos_2_hash) do |key, oldval_2, newval_2|
      oldval_2.map! do |item|
        item_index = oldval_2.index(item)
        if newval_2 == item_index
          item = "S"
        else
          item
        end
      end
    end
    @own_grid.merge(ship_1_pos_3_hash) do |key, oldval_3, newval_3|
      oldval_3.map! do |item|
        item_index = oldval_3.index(item)
        if newval_3 == item_index
          item = "S"
        else
          item
        end
      end
    end
  end

end
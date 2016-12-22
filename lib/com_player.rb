require './lib/grid'
require './lib/ship'
require 'pry'

class ComPlayer

  attr_accessor :com_own_grid,
                :com_guess_grid
          
  def initialize
    @com_own_grid = Grid.new.make_4_x_4_grid
    @com_guess_grid = Grid.new
  end

  def com_place_ship_1
    @com_own_grid.merge(com_ship_1_position) do |key, oldval, newval|
      oldval.map! do |item|
        item_index = oldval.index(item)
        if newval.include?(item_index.to_s)
          item = "S"
        end
      end
    end
    @com_own_grid.each do |key, value|
      value.map! do |star|
        if star != nil
          star
        else
          star = "*"
        end
      end
    end
  end

  def com_place_ship_2
    @com_own_grid.merge(com_ship_2_position) do |key, oldval, newval|
      oldval.map! do |item|
        item_index = oldval.index(item)
        if newval.include?(item_index.to_s)
          item = "S"
        end
      end
    end
    @com_own_grid.each do |key, value|
      value.map! do |star|
        if star != nil
          star
        else
          star = "*"
        end
      end
    end
  end

  def com_ship_1_position
    x_axis = ["A", "B", "C", "D"].sample
    y_axis = [0, 1].sample
    first_cell = y_axis.to_s
    second_cell = y_axis.to_s.next
    third_cell = y_axis.to_s.next.next
    {x_axis => [first_cell, second_cell, third_cell]}
  end

  def com_ship_2_position
    x_axis = ["A", "B", "C", "D"].sample
    y_axis = [0, 1, 2, 3].sample
    first_cell = x_axis + y_axis.to_s
    if x_axis == "D"
      x_axis_2 = "C"
    else 
      x_axis_2 = x_axis.next
    end
    {x_axis => y_axis.to_s, x_axis_2 => y_axis.to_s}
  end

end
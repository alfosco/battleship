require './lib/grid'
require './lib/ship'

class Cell

  attr_reader :cell_display

  def initialize
    @coordinate = coordinate
    @cell_display = "*"
  end

  def coordinate(row, column)
    row + (column.to_i + 1)
  end

  def cell_occupied?
    false
  end

end
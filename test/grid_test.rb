require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test

  def test_it_exists
    grid = Grid.new
    assert_equal Grid, grid.class
    assert_instance_of Grid, grid
  end

  def test_it_creates_new_4_x_4_grid
    grid = Grid.new
    assert_equal ({"A"=>["*", "*", "*", "*"], "B"=>["*", "*", "*", "*"], "C"=>["*", "*", "*", "*"], "D"=>["*", "*", "*", "*"]}), grid.make_4_x_4_grid
  end

end
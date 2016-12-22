require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new
    assert_equal Player, player.class
    assert_instance_of Player, player
  end

  def test_it_has_a_new_grid
    player = Player.new
    assert_equal ({"A"=>["*", "*", "*", "*"], "B"=>["*", "*", "*", "*"], "C"=>["*", "*", "*", "*"], "D"=>["*", "*", "*", "*"]}), player.own_grid
  end

  def test_it_stupid
    player = Player.new
    assert_equal 5, player.get_two_cell_ship_coordinates
  end

end
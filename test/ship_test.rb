require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new(2)
    assert_equal Ship, ship.class
    assert_instance_of Ship, ship
  end

  def test_it_has_a_size
    ship = Ship.new(2)
    assert_equal 2, ship.ship_size
  end

  def test_it_is_represented_by_a_piece
    ship = Ship.new(2)
    ship_2 = Ship.new(3)
    assert_equal "SS", ship.ship_piece
    assert_equal "SSS", ship_2.ship_piece
  end

  def test_it_floats_by_deafault
    ship = Ship.new(2)
    refute ship.sunk?
  end

  def test_it_sinks
    ship = Ship.new(2)
    ship.hit
    ship.hit
    assert ship.sunk?
  end

end
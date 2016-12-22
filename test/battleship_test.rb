require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleshipTest < Minitest::Test

  def test_it_exists
    bs = Battleship.new

    assert_equal Battleship, bs.class
    assert_instance_of Battleship, bs
  end

  def test_play_game_is_false_by_default
    bs = Battleship.new
    assert_equal false, bs.play_game
  end

end
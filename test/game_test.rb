require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_equal Game, game.class
    assert_instance_of Game, game
  end

  def test_it_has_two_players
    game = Game.new
    assert_equal Player, game.player_1.class
    assert_equal ComPlayer, game.com_player.class
  end

end
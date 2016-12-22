require 'minitest/autorun'
require 'minitest/pride'
require './lib/com_player'

class ComPlayerTest < Minitest::Test

  def test_it_exists
    com_player = ComPlayer.new
    assert_equal ComPlayer, com_player.class
    assert_instance_of ComPlayer, com_player
  end

  # def test_com_ship_1_position
  #   com_player = ComPlayer.new
        
  # end

end
require './lib/player'
require './lib/com_player'
require './lib/message'

class Game

include Message

  attr_reader :player_1,
              :com_player

  def initialize
    @player_1 = Player.new
    @player_1_grid = @player_1.own_grid
    @com_player = ComPlayer.new
  end

  def play_game
    @com_player.com_place_ship_1
    @com_player.com_place_ship_2
    Message.enemy_ships_placed
    Message.your_grid_id
    @player_1.display_grid(@player_1_grid)
    Message.enter_grid_for_two_unit_ship
    @player_1.place_p1_ship_1
    Message.your_grid_id
    @player_1.display_grid(@player_1_grid)
    Message.enter_grid_for_three_unit_ship
    @player_1.place_p1_ship_2
    Message.your_grid_id
    @player_1.display_grid(@player_1_grid)
  end

end
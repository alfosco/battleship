class Ship

  attr_reader :ship_size,
              :ship_piece,
              :hit_count

  def initialize(size)
    @ship_size = size
    @ship_piece = "S" * @ship_size
    @hit_count = 0
  end

  def hit
    @hit_count += 1
  end

  def sunk?
    @ship_size == @hit_count
  end

end

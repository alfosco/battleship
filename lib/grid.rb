class Grid

  def initialize
    @make_4_x_4_grid = make_4_x_4_grid
  end

  def make_4_x_4_grid
    row_id = ["A", "B", "C", "D"]
    grid_array = Array.new(4, "*").map {|row| Array.new(4, "*")}
    Hash[row_id.zip(grid_array)]
    #creates:
    #{"A" => ["*", "*", "*", "*"],
    # "B" => ["*", "*", "*", "*"],
    # "C" => ["*", "*", "*", "*"],
    # "D" => ["*", "*", "*", "*"]
    #}
  end

end
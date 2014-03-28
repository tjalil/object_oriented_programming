class Grid
  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def size
    "#{@x} #{@y}"
  end
end

class Rover < Grid
  attr_accessor :direction

  def initialize(x,y,direction)
    super(x,y)
    @direction = direction
  end

  def initial_state
    "#{@x} #{@y} #{@direction}"
  end

  def go_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    elsif @direction == "W"
      @direction = "S"
    end
  end

  def go_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def go_straight
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "W"
      @x -= 1
    end
  end

  def move
    puts "Directions for Mars Rover: "
    rover_move = gets.chomp.split("")

    rover_move.each do |direct|
      if direct == "L"
        go_left
      elsif direct == "R"
        go_right
      elsif direct == "M"
        go_straight
      end
    end
  end

end #end class Rover

grid = Grid.new(5,5)
puts grid.size

rover1 = Rover.new(1, 2, "N")
puts rover1.initial_state

rover1.move

puts rover1.initial_state

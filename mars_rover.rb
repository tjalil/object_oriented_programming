class Grid
  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def size
    puts "The size of the grid: #{@x} #{@y}"
  end
end

class Rover
  attr_accessor :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def state
    puts "Current location of Rover: #{@x} #{@y} #{@direction}"
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
    state
  end
end #end class Rover

class Operate

    def create
      puts "Exploring Mars with Taha's Rover!".upcase
      puts "Input the size of the grid like such: X Y"
      grid_size = gets.chomp.split(" ")
      grid_x = grid_size[0].to_i
      grid_y = grid_size[1].to_i
      my_grid = Grid.new(grid_x, grid_y)
      my_grid.size

      puts "Input the starting coordinates of Taha's Rover as such: X Y direction"
      initial_state = gets.chomp.split(" ")
      rover_x = initial_state[0].to_i
      rover_y = initial_state[1].to_i
      rover_direction = initial_state[2]
      my_rover = Rover.new(rover_x, rover_y, rover_direction)

      my_rover.move

      done = false
      while !done
      puts "Would you like to create another Rover? Type 'Y' or 'N'"
      another_rover = gets.chomp
        if another_rover == 'Y'
          create
        elsif another_rover == 'N'
          done = true
        end
      end
    end

end

#call the create method
operate = Operate.new
operate.create

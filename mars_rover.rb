#use gets - we want to input the size of the grid (x,y)
  #input x and y seperately and then put them as coordinates OR input 'x y', 
  #split the string at " ", this gives us an array which we can define as our x and y coordinates

#use gets - we want the initial position - again split the string and use as initial values of x y and direction
  #fail if x coordinate > x coordinate from the size of the grid
  #fail if y coordinate > y coordinate from the size of the grid

#use gets - pass a string that has MLR - program movements corresponding to M L and R

class Rover

  attr_accessor :x, :y, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def grid_size

  end

  def initial_state
    puts "For the initial state of Rover we require, x, y, and direction. Pass them as such: x y direction"
    

  end

  def motion
  end

  # def new_rover
  # end

end


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
end

  def grid
    puts "Grid size needed. Pass it as such: x y"
    grid_size = gets.chomp

    grid_array = []
    grid_array = grid_size.split(" ").to_a

    grid_array.map! do |num|
      num.to_i
    end

    grid_x = grid_array[0]
    grid_y = grid_array[1]

    puts "Your grid is #{grid_x} by #{grid_y}"
  end

  def initial_state
    puts "For the initial state of Rover we require, x, y, and direction(N,S,E,W). Pass them as such: x y direction"
    initial = gets.chomp

    initial_array = []
    initial_array = initial.split(" ").to_a
    initial_direction = initial_array[-1]

    #need to separate coordinates and direction OR assign number to direction so that to_i can be run on entire array

    initial_array.map! do |num|
      num.to_i
    end

    initial_x = intial_array[0]
    initial_y = intial_array[1]
    initial_direction = intial_array[2]

  end

  initial_state

  def motion
    puts "Input the set of directions you want the Rover to follow"
    rover_motion = gets.chomp

    motion_array = []
    motion_array = rover_motion.split("").to_a

    motion_array.each do |direction|
      #if initial_direction = N and motion_array = L 
        #new_direction = W
      
      #if initial_direction = S and motion_array = L
        #new_direction = E
      
      #if initial_direction = E and motion_array = L 
        #new_direction = N

      #if initial_direction = W and motion_array = L 
        #new_direction = S

      

      #if initial_direction = N and motion_array = R 
        #new_direction = E

      #if initial_direction = S and motion_array = R 
        #new_direction = W

      #if initial_direction = E and motion_array = R 
        #new_direction = S

      #if initial_direction = W and motion_array = R 
        #new_direction = N




      #if initial_direction = N and motion_array = M 
        #new_direction = N && new_y += 1

      #if initial_direction = S and motion_array = M 
        #new_direction = S && new_y -= 1

      #if initial_direction = E and motion_array = M 
        #new_direction = E && new_x += 1

      #if initial_direction = W and motion_array = M 
        #new_direction = W && new_x -= 1

    end

  end

  # def new_rover
  # end


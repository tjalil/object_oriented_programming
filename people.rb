class Person
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}"
  end

end

class Student < Person

# did not initialize again because the instance variable @name has already been initialized in the parent class Person
# if Instructor had another instance variable, we would have had to initialize @name (super(name)) along with the new instance variable

  def learn
    "I get it!"
  end

end

class Instructor < Person

# did not initialize again because the instance variable @name has already been initialized in the parent class Person
# if Instructor had another instance variable, we would have had to initialize @name (super(name)) along with the new instance variable

  def teach
    "Everything in Ruby is an Object"
  end

end

student = Student.new("Christina")
instructor = Instructor.new("Chris")

puts student.greeting
puts instructor.greeting

puts student.learn
puts instructor.teach

puts student.teach
# throws an undefined method error (NoMethodError) because 'teach' is a instance method 
# that is only available to the instance of Instructor. Had teach been created in Person 
# or Student, we would have been able to call it on our instance of Student



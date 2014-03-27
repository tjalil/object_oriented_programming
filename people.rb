class Person
  attr_accessor :name

  def initializer(name)
    @name = name
  end
end

class Student
  def learn
    "I get it!"
  end
end

class Instructor
  def teach
    "Everything in Ruby is an Object"
  end
end

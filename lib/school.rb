

class School
  attr_accessor :name, :roster
  
  def initialize(input)
    @name = input
    @roster = {}
  end
  
  def add_student(name, number)
    if @roster.has_key?(number)
      @roster[number] << name
    else
      @roster[number] = [name]
    end
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort()
    result = {}
    @roster.each do |key, val|
      if result.has_key?(val)
        result[val] << key
        result[val] = result[val].sort
      else
        result[val] = [key]
      end
    end
    
  end
  
end
class School
  attr_accessor :name, :roster
  def initialize(input)
    @name = input
    @roster = {}
  end
end
class Cell

  attr_accessor :number 

  def initialize number = 0 
    @number = number 
  end

  def number 
    @number
  end

  def solved?
    number != 0
  end


end
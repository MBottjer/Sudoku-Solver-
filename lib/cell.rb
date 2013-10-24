require 'grid'

class Cell

  attr_accessor :index, :value

  def initialize index = 0
    @index = index
    @value = '015003002000100906270068430490002017501040380003905000900081040860070025037204600'[@index].to_i
  end

  def solved?
    value != 0
  end
  
  def row 
   @row = index/9
  end 

  def column
    @column = index % 9
  end

  def block
    @block = column / 3 + 3 * (row / 3)
  end

  def candidates 
    @value = (1..9).to_a if !solved?
  end

  def solvable?(non_candidates)
    (candidates - non_candidates).length == 1
  end

  def solve index
    @value = (candidates - non_candidates(index)).join.to_i
  end

end


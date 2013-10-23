require 'cell'

class Grid

  def initialize puzzle
    @puzzle = puzzle 
    @cells = @puzzle.split('').map { |number| (Cell.new(number.to_i)).number}
    # @board = Array.new(9) { Array.new(9) {Cell.new}}
  end

  def cells
    @cells
  end

  def cell_count
    @cells.count
  end

  def row number
   array = cells.each_slice(9).to_a
   array[number - 1]
  end

  def column number 
   array = cells.each_slice(9).to_a
   array = array.transpose
   array[number - 1]
  end

  def block number 
    array = []
    if [1,4,7].include? number
      array.concat(row(number).first(3) + row(number + 1).first(3) + row(number + 2).first(3)) 
    elsif [2,5,8].include? number 
      array.concat(row(number-1)[3,3] + row(number)[3,3] + row(number + 1)[3,3])
    else
      array.concat(row(number-2).last(3) + row(number-1).last(3) + row(number).last(3))
    end
  end



end



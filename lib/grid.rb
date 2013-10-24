require 'cell'

class Grid

  attr_reader :indices

  def initialize puzzle
    @puzzle = puzzle
    @indices =  (0..80).to_a.map { |index| (Cell.new(index))}
    # @cells = @puzzle.split('').map { |number| (Cell.new(number.to_i)).number}
    # @board = Array.new(9) { Array.new(9) {Cell.new}}
  end

  def cells
    @cells
  end

  def cell_count
    @indices.count
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

  # def block number 
  #   array = cells.each_slice(3).to_a
  #   new_array = []


  #   # array = []
  #   # if [1,4,7].include? number
  #   #   array.concat(row(number).first(3) + row(number + 1).first(3) + row(number + 2).first(3)) 
  #   # elsif [2,5,8].include? number 
  #   #   array.concat(row(number-1)[3,3] + row(number)[3,3] + row(number + 1)[3,3])
  #   # else
  #   #   array.concat(row(number-2).last(3) + row(number-1).last(3) + row(number).last(3))
  #   # end
  # end



end



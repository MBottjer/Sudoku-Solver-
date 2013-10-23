require 'cell'

class Grid

  def initialize puzzle
    @puzzle = puzzle 
    @board = @puzzle.split('').map { |number| Cell.new(number.to_i)}
    # @board = Array.new(9) { Array.new(9) {Cell.new}}
  end

  def board 
    @board
  end

  def cell_count
    @board.count
  end

  def first_row
    array = @puzzle.split(//).map {|n| n.to_i}
    array.first(9)
  end

  def row number
    array = @puzzle.split(//).map {|n| n.to_i}
    rows = []
    until array == []
      rows << array.shift(9)
    end
    rows[number-1] 
  end

  def column number 
    array = @puzzle.split(//).map {|n| n.to_i}
    rows = []
    until array == []
      rows << array.shift(9)
    end
    columns = rows.transpose
    columns[number-1]
  end

  def first_block
    array = [] 
    array.concat(row(1).first(3) + row(2).first(3) + row(3).first(3)) 
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



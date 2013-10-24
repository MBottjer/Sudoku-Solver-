# require 'cell'

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

  def row index
   from = index - index % 9
   @puzzle.slice(from, 9).split(//).map {|number| number.to_i}
  end

  def column index 
    initial = index % 9
    Array.new(9).map {
      cell = @puzzle[initial].to_i
      initial += 9
      cell
    }
  end

  def block index
    initial = ((index) / (9 * 3)) * 9 * 3 
   Array.new(3).map {
      cells = @puzzle.slice(initial, 3).split(//)
      initial += 9
      cells
    }.flatten.map(&:to_i)
  end

  def non_candidates index
    non_cand = row(index) + column(index) + block(index)
    non_cand = non_cand.reject { |n| n==0}
    non_cand.uniq
  end

  def solved?
    return true if indices.all? {|cell| cell.solved?}
    false
  end

  def solve
    while !solved?
      @indices.each do |cell| 
      cell.solve(index) if cell.solvable?
    end
  end
      solved?
  end


end



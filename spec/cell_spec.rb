require 'cell'
require 'grid'

describe Cell do
  let (:cell) {Cell.new}

   let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
    let(:grid) { Grid.new(puzzle)}

  it 'cell value is zero it is not solved' do
    cell = Cell.new 4
    expect(cell.solved?).to be_false
  end 

  it 'knows when it is solved' do
    cell = Cell.new 2
    expect(cell.solved?).to be_true
  end

  it 'a cell at index 9 knows it\'s in row 2' do
    cell = Cell.new 9
    expect(cell.row).to eq 1
  end

  it 'a cell at index 69 knows it\'s in row 7' do
    cell = Cell.new 69
    expect(cell.row).to eq 7
  end

  it 'a cell at index 35 knows it\'s in column 8' do
    cell = Cell.new 0
    expect(cell.column).to eq 0
  end

  it 'a cell at index 65 knows it\'s in block 6' do 
    cell = Cell.new 65
    expect(cell.block).to eq 6
  end

  it 'every unsolved cell has a potential candidate from 1-9' do 
    cell = Cell.new 3
    expect(cell.candidates).to eq [1,2,3,4,5,6,7,8,9]
  end

  it 'can say if there is one solution' do 
    cell = Cell.new 20 
    expect(cell.solvable_on?(grid)).to be_true
  end

  it 'is assigned its solved value if there is only one solution' do
    cell = Cell.new 20
    expect(cell.solve(grid)).to eq 9
  end

  # it 'can solve itself' do
  #   cell = Cell.new 20
  #   grid = double :Grid
  #   expect(grid).to receive(:non_candidates).and_return([8,6,7,2,5,9,4,3])
  #   grid.non_candidates
  #   expect(cell.solve grid.non_candidates).to eq 9
  # end

  # it 'a given cell knows its neightbours' do 
  #   cell = Cell.new 32 
  #   expect(cell.neighbours).to eq [4,9,2,1,7,3,8,5]
  # end

 

end
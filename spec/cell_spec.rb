require 'cell'
require 'grid'

describe Cell do
  let (:cell) {Cell.new}

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

end
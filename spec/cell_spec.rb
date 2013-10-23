require 'cell'

describe Cell do
  let (:cell) {Cell.new}

  it 'has a default value of 0' do
    expect(cell.number).to eq 0
  end 

  it 'always has a number' do 
  end

  it 'knows when it is not solved' do
    expect(cell.solved?).to be_false
  end

  it 'knows when it is solved' do
    cell = Cell.new(1)
    expect(cell.solved?).to be_true
  end

  it

end
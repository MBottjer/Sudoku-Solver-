require 'grid'

describe Grid do

  context "initialization" do

    let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' } # it's an easy sudoku puzzle, row by row
    let(:grid) { Grid.new(puzzle)}

    it 'has 81 cells' do
        cell = double :Cell
        expect(grid.cell_count).to eq 81
    end

    it 'should have an unsolved first cell' do
        expect(grid.cells[0]).to eq 0
    end

    it 'returns the 8th row' do
        expect(grid.row(8)).to eq [8,6,0,0,7,0,0,2,5]
    end

    it 'can tell me its first column' do 
        expect(grid.column(1)).to eq [0,0,2,4,5,0,9,8,0]
    end

    it 'can tell me its fifth block' do
        expect(grid.block(5)).to eq [0,0,2,0,4,0,9,0,5]
    end 

    it 'should have a solved second cell with value 1' do
        expect(grid.cells[1]).to eq 1 
    end

    it 

  end

end
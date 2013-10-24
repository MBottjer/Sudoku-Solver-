require 'grid'

describe Grid do

  context "initialization" do

    let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
    let(:grid) { Grid.new(puzzle)}

    it 'has 81 cells' do
        cell = double :Cell
        expect(grid.cell_count).to eq 81
    end

    it 'should have an unsolved first cell' do
        expect(grid.indices[0].value).to eq 0
    end

    it 'should have a solved third cell with value 1' do
        expect(grid.indices[2].value).to eq 5 
    end

    it 'returns the values in the 8th row when given a cell with index 75' do
        cell = double :Cell, index: 75
        expect(grid.row(cell.index)).to eq [0,3,7,2,0,4,6,0,0]
    end

    it 'returns the values in 6th column when given a cell with index 69' do
        cell = double :Cell, index: 69
        expect(grid.column(cell.index)).to eq [0,9,4,0,3,0,0,0,6]
    end

    it 'returns the values in the seventh block when given a cell with index 68' do 
        cell = double :Cell, index: 54
        expect(grid.block(cell.index)).to eq [9,0,0,8,6,0,0,3,7]
    end

     it 'returns the values in the third block when given a cell with index 38' do 
        cell = double :Cell, index: 38
        expect(grid.block(cell.index)).to eq [4,9,0,5,0,1,0,0,3]
    end

    it 'returns the non-candidates of a given cell' do
        cell = double :Cell, index: 69
        expect(grid.non_candidates(cell.index)).to eq [8,6,7,2,5,9,4,3]
    end


    # it 'solves the puzzle' do
    #     expect(grid)
    # end

  end

end
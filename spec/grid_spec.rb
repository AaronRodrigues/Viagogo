require_relative '../lib/grid'

describe Grid do	
	let(:grid) { described_class.new(10) }

	describe 'initializes the grid' do
		it 'exists' do
			expect(grid).to be_truthy
		end
	end
end
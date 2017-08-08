require_relative '../lib/event'

describe Event do
	let(:event) {described_class.new(1, [1,2], 10)}

	describe 'initializes an event' do
		it 'exists' do
			expect(event).to be_truthy
		end
		it 'calculates the Manhattan Distance between two points' do
			expect(event.distance_to([0,0])).to eq 3
		end
	end
end
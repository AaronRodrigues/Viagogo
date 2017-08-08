require_relative '../lib/event'
require_relative '../lib/ticket'

describe Event do
	let(:event) {described_class.new(1, [1,2], [1,2,3,4,5])}
	let(:ticket){ double :ticket}

	describe 'initializes an event' do

		it 'exists' do
			expect(event).to be_truthy
		end

		it 'initializes with an id' do
			expect(event.id).to eq 1
		end

		it 'initializes with a location' do
			expect(event.location).to eq [1,2]
		end

		it 'initializes with tickets' do
			expect(event.tickets).to eq [1,2,3,4,5]
		end

		it 'calculates the Manhattan Distance between two points' do
			expect(event.distance_to([0,0])).to eq 3
		end

		xit 'can return the cheapest tickets in an area' do
			allow(ticket).to receive(:price).and_return [10,20,30,40,50]
			allow(event).to receive(:find_cheapest_ticket)
			# allow(find_cheapest_ticket).to receive(:price).and_return [10,20,30,40,50]
			expect(event.find_cheapest_ticket).to eq 10
		end

		xit 'can generate events' do
			allow(event).to receive(:generate) do |event_id, location|
  			if event_id = 1 && location = [1,2]
  				Event.new(event_id, location, tickets)
  			end
		end
			expect(event.generate).to be_a_kind_of(event) 
		end
	end
end
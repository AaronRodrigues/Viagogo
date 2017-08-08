require_relative '../lib/ticket'

describe Ticket do	
	let(:ticket) { Ticket.new(10) }

	describe 'initializes the ticket' do
		it 'exists' do
			expect(ticket).to be_truthy
		end
		it 'has a price' do
			expect(ticket.price).to eq 10
		end
	end
end
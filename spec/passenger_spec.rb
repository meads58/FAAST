require 'passenger'

describe Passenger do 

	let(:passenger) { Passenger.new }
	let(:coach) { double :coach }

	it 'are created and in the station' do 
		expect(passenger.status).to eq :at_platform
	end

	it 'can leave the station' do
		passenger.leave_station
		expect(passenger.status).to eq :in_da_hood
	end

	it 'can go back in the station' do
		passenger.leave_station
		passenger.enter_station
		expect(passenger.status).to eq :at_platform
	end

	it 'can enter the coach' do
		passenger.enter_coach
		expect(passenger.status).to eq :in_the_can
	end

	it 'can exit the coach' do
		passenger.enter_coach
		passenger.exit_coach
		expect(passenger.status).to eq :at_platform
	end

	
end
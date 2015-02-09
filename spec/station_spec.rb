require 'station'

describe Station do 

let(:station) {Station.new(:aldgate)}
let(:train) {double :train}

	it 'sends signal to enter station' do
		enter_station
		expect(station.signal).to be :Enter
	end

	it 'sends signal to exit station' do
		enter_station
		station.leave_station
		expect(station.signal).to be :Leave
	end

	it 'allows trains to enter on Enter signal and stop' do
		expect(train).to receive(:stop)
		dock_train(train)
		expect(station.train_count).to eq(1)
	end
	
	it 'allows train exit on Leave signal' do
		expect(train).to receive(:stop)
		dock_train(train)
		undock_station(train)
		expect(station.train_count).to eq(0)
	end
end

def enter_station
	expect(train).to receive(:location)
	station.enter_station(train)
end

def dock_train(train)
	expect(train).to receive(:location)
	station.enter_station(train)
	station.dock(train)
end

def undock_station(train)
	station.leave_station
	station.undock(train)
end
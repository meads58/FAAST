require 'train'

describe Train do 
	STOPPED = :Stopped
	MOVING = :Moving
	let(:train) { Train.new }
	let(:aldgate) {double :station, name: :doneskie}

	it "is created with a stopped status" do
		expect(train.status).to eq STOPPED
	end

	it "when moving the status is moving" do
		train.move
		expect(train.status).to eq MOVING
	end

	it "when moving it can stop and the status is stopped" do
		train.move
		train.stop
		expect(train.status).to eq STOPPED
	end

	it 'should know which station it is in' do
		train.location = aldgate.name
		expect(train.location).to eq :doneskie
	end

end
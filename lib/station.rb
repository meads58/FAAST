class Station

	attr_reader :signal, :name

	def initialize(name)
		@train_holder = []
		@name = name
	end

	def train_holder
		@train_holder  
	end

	def enter_station(train)
		@signal = :Enter
		train.location(name)
	end

	def leave_station
		@signal = :Leave
	end

	def dock(train)
		train.stop
		@train_holder << train
	end

	def undock(train)
		@train_holder.delete(train)
	end

	def train_count
		train_holder.count
	end

end	
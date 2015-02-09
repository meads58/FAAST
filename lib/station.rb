class Station

	attr_reader :signal

	def initialize
		@train_holder = []
	end

	def train_holder
		@train_holder  
	end

	def enter_station
		@signal = :Enter
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
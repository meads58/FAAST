class Passenger

	attr_reader :status

	def initialize
		@status = :at_platform
	end

	def enter_station
		@status = :at_platform
	end

	def leave_station
		@status = :in_da_hood
	end

	def enter_coach
		@status = :in_the_can
	end

	def exit_coach
		enter_station
	end


end
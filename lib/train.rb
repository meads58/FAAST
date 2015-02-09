class Train

	attr_accessor :location

	def initialize
		@location
		stop
	end

	def status
		@status
	end

	def move
		@status = :Moving
	end

	def stop
		@status = :Stopped
	end


end
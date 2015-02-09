class Train

	def initialize
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
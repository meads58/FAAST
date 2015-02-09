Train
=============
Responsibilities | Collaborators
=================================
Move						 |Station, coach
Stop						 |Station, coach
		
Station
=============
Responsibilities | Collaborators
=================================
Allows touch in	 |Passanger
Allows touch out |Passanger
Docks train			 |Train
Undocks train		 |Train
								 
Passenger
=============
Responsibilities | Collaborators
=================================
Enter coach			 |Coach
Exit coach			 |Coach
Enter station		 |Station						 
Leave station		 |Station
								 								 
Coach
=============
Responsibilities | Collaborators
=================================
Open doors			 |Train
Close doors			 |Train
max capacity     |Passenger						 
connect					 |Train, coach
disconnect			 |Train, coach
						
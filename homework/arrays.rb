# 1. In a file “arrays.rb”...
# 2. Create an array that contains every American Idol winner. (Sorry for making you type so
# much, but learning to code is like learning an instrument)
# 3. With that array, please display the first and second place winners by choosing randomly.
# 4. The second place winner cannot be the same winner as the first place winner.

#array with all winners
americanidol = [ 
	['Kelly','Clarkson'],
	['Ruben','Studdard'],
	['Fantasia','Barrino'],
	['Carrie','Underwood'],
	['Taylor','Hicks'],
	['Jordin','Sparks'],
	['David','Cook'],
	['Kris','Allen'],
	['Lee','DeWyze'],
	['Scotty','McCreery'],
	['Phillip','Phillips'],
	['Candice','Glover']
]

#Shuffle array and store 
winners_shuffled = americanidol.shuffle

# Print out 1st place winner and second place winner randomly
puts winners_shuffled[0];
puts winners_shuffled[1];
class Coffee
	attr_accessor :price, :taste, :size, :color

	#Special method, always called when .new is invoked
	def initialize(t, color)
		self.taste = t
		self.color = color
	end
end

# foldgers = Coffee.new("Terrible", "Brownish")
# puts foldgers.taste + foldgers.color
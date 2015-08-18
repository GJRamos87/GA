class AnimalsController < ApplicationController
  def index
		@animals = Animal.all
  end

  def new 
  	@animal = Animal.new
  end

	def create 
		create_animal = params.require(:animal).permit(:name, :gender, :age, :size, :image)
		animal = Animal.new(create_animal)
		if animal.save 
			flash[:notice] = " Your Animal is ALIVE SON!"
			redirect_to "/animals"
		end
	end
end
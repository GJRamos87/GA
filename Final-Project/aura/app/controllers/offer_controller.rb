class OfferController < ApplicationController
	def index
		@offers = Offer.all
	end

  def new 
  	@offers = Offer.new
  end

	# def create 
	# 	create_offer = params.require(:animal).permit(:name, :gender, :age, :size, :image)
	# 	offer = Offer.new(create_animal)
	# 	if animal.save 
	# 		flash[:notice] = " Your Animal is ALIVE SON!"
	# 		redirect_to "/animals"
	# 	end
	# end


end
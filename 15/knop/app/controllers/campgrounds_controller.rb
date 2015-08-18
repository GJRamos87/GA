class CampgroundsController < ApplicationController
  def index
		@campground = Campground.all
  end

  def new 
  	@campground = Campground.new
  end

	def create 
		create_campground = params.require(:campground).permit(:address, :site_count)
		@campground = Campground.new(create_campground)
		if @campground.save 
			redirect_to campgrounds_path
		else
			render :new
		end
	end

end
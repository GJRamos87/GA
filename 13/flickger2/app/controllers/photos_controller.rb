class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photos_path, success: "Photo created!"
    else
      render :new
    end
  end

  def edit 
    @photo_id = params[:id]
    @photo = Photo.find(params[:id])
  end

  def update 
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(photo_params)
      redirect_to "/photos"
    else
      #.... fuck off 
    end

  end

  def show
    render text: "The photo id is: #{params[:id]}"
  end

  private

  def photo_params
    params.require(:photo).permit(:filename, :caption)
  end
end

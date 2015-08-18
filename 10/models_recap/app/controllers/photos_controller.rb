class PhotosController < ApplicationController
  def index
  	@albums = Album.all
  end
end
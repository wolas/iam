class PaintingsController < ApplicationController
  
  def index
  end
  

  # GET /paintings/1
  # GET /paintings/1.json
  def show
    @painting = Painting.find(params[:id])
    @artist = @painting.artist
  
  end
end
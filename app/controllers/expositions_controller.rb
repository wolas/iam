class ExpositionsController < ApplicationController
  def index
    @expositions = Exposition.all
  end

  def show
    @exposition = Exposition.find(params[:id])
    @photos = @exposition.photos
  end
end

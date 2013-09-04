class ArtistsController < ApplicationController

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.all
    @letter = @artists.map { |artist| artist.name.first }
  end



  # GET /artists/1
  # GET /artists/1.json
  def show
    @artist = Artist.find(params[:id])
    @paintings = @artist.paintings


  end
end

class Admin::PaintingsController < AdminController
  before_action :set_artist
  before_action :set_painting, only: [:show, :edit, :update, :destroy]

  # GET /paintings
  # GET /paintings.json
  def index
    @paintings = @artist.paintings
  end

  # GET /paintings/1
  # GET /paintings/1.json
  def show
  end

  # GET /paintings/new
  def new
    @painting = @artist.paintings.new
  end

  # GET /paintings/1/edit
  def edit
  end

  # POST /paintings
  # POST /paintings.json
  def create
    @painting = @artist.paintings.new(painting_params)
    
    respond_to do |format|
      if @painting.save
        format.html { redirect_to [:admin, @artist, @painting], notice: 'Painting was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /paintings/1
  # PATCH/PUT /paintings/1.json
  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to [:admin, @artist, @painting], notice: 'Painting was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /paintings/1
  # DELETE /paintings/1.json
  def destroy
    @painting.destroy
    respond_to do |format|
      format.html { redirect_to admin_artist_paintings_url(@artist) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = @artist.paintings.find(params[:id])
    end
    
    def set_artist
      @artist = Artist.find params[:artist_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painting_params
      params.require(:painting).permit(:artist_id, :title, :technique, :width, :height, :finished_on, :price, :photo_attributes => [:id, :artist_id, :image])
    end
end

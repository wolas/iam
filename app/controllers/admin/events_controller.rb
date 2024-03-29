class Admin::EventsController < AdminController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  include ActsAsTaggableOn::TagsHelper
  
  def tag
    @tag = params[:tag_name]
    @events = Event.tagged_with(@tag).order("start ASC")
    @tags = Event.tag_counts_on(:tags)
  end
  
  # GET /events
  # GET /events.json
  def index
    @events = Event.all.order("start ASC")
    @tags = Event.tag_counts_on(:tags)
  end
  
  # GET /events/1
  # GET /events/1.json
  def show
    @photos = @event.photos
  end
  
  # GET /events/new
  def new
    @event = Event.new
  end
  
  # GET /events/1/edit
  def edit
  end

    
  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        params[:event][:photos].each { |file| @event.photos.create :image => file } if params[:event][:photos]
        
        format.html { redirect_to admin_event_path(@event), notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        params[:event][:photos].each { |file| @event.photos.create :image => file } if params[:event][:photos]
        
        format.html { redirect_to admin_event_path(@event), notice: "#{event_params[:type]} was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :summary, :start, :stop, :category, :place, :tag_list, :photo_attributes => [:id, :event_id, :image])
    end
end

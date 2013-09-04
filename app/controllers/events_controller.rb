class EventsController < ApplicationController
  
  
  def expositions
    @events = Event.find_all_by_category "Exposition"
    @tags = @events.map(&:tags).flatten.uniq
  end
  
  def popups
    @events = Event.find_all_by_category "Popup"
    @tags = @events.map(&:tags).flatten.uniq
    
    
  end

  def show
    @event = Event.find(params[:id])
    @photos = @event.photos
  end

  def index
    @events = Event.all
  end
  
end  
  
class EventsController < ApplicationController
  
  
  def expositions
    @expositions = Event.find_all_by_category "Exposition"
  end
  
  def popups
    @popups = Event.find_all_by_category "Popup"
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end
  
end  
  
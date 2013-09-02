class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  
  def expositions
    @expositions = Event.find_all_by_category "Exposition"
  end
  
  def popups
    @popups = Event.find_all_by_category "Popup"
  end
  
end  
  
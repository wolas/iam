class StaticController < ApplicationController
  
  before_filter :get_location
  
  def index
    
  end
  
  private
  def get_location
    @location = Geocoder.search(request.ip)
  end

end

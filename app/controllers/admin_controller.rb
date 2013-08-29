class AdminController < ApplicationController
  
  before_action :set_admin
  
  def index
    
  end
  
  private
  
    def set_admin
      @admin = true
    end

end

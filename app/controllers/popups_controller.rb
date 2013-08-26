class PopupsController < ApplicationController
  def index
    @popups = Popup.all
  end

  def show
  end
end

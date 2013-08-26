class ExpositionsController < ApplicationController
  def index
    @expositions = Exposition.all
  end

  def show
  end
end

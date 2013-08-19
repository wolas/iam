class Painting < ActiveRecord::Base

  belongs_to :artist
  
  validates_presence_of :title, :technique, :width, :height

end

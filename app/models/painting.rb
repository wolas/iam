class Painting < ActiveRecord::Base

  has_and_belongs_to_many :events
  belongs_to :artist
  has_one :photo, :as => :parent
  
  accepts_nested_attributes_for :photo
  
  validates_presence_of :title, :technique, :width, :height

end

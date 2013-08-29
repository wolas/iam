class Event < ActiveRecord::Base
  
  has_and_belongs_to_many :paintings
  has_one :photo, :as => :avatar
  has_many :photos, :as => :parent
  
  accepts_nested_attributes_for :photo

end

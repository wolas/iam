class Event < ActiveRecord::Base
  has_and_belongs_to_many :paintings

  has_one :photo, :as => :parent
end

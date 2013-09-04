class Event < ActiveRecord::Base
  
  acts_as_taggable
  
  has_and_belongs_to_many :paintings
  has_one :photo, :as => :avatar
  has_many :photos, :as => :parent
  
  accepts_nested_attributes_for :photo

  def short_summary num=450
    return "" if summary.blank?
    summary.slice 0, num
  end  

end

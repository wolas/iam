class Artist < ActiveRecord::Base

  has_many :paintings
  
  has_one :photo, :as => :avatar
  accepts_nested_attributes_for :photo

  def short_bio num=450
    return "" if bio.blank?
    bio.slice 0, num
  end  
  
  
end

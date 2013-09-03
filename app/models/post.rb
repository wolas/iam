class Post < ActiveRecord::Base
  has_many :comments
  
  has_one :photo, :as => :avatar
  has_many :photos, :as => :parent
  
  accepts_nested_attributes_for :photo

  def short_body num=450
    return "" if body.blank?
    body.slice 0, num
  end  
  
  def short_title num=40
    return "" if title.blank?
    
    title.size > num ? title.slice(0, num - 3) + "..." : title
  end
end

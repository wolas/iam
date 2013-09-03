class Post < ActiveRecord::Base
  has_many :comments
  
  has_one :photo, :as => :avatar
  has_many :photos, :as => :parent

  def short_body num=450
    return "" if body.blank?
    body.slice 0, num
  end  
end

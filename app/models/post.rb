class Post < ActiveRecord::Base
  has_many :comments

  def short_body num=450
    return "" if body.blank?
    body.slice 0, num
  end  
end

class Artist < ActiveRecord::Base

  has_many :paintings

  def short_bio num=450
    bio.slice 0, num
  end  

  
end

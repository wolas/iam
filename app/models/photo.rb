class Photo < ActiveRecord::Base
  
  belongs_to :parent, :polymorphic => true
  belongs_to :avatar, :polymorphic => true
  
  has_attached_file :image, :default_url => "http://http://www.placehold.it/:style",
  :styles => {
    :height700 => "x700",
    :height500 => "x500",
    :height300 => "x300",
    :height100 => "x100",
    
    :width700 => "700",
    :width500 => "500",
    :width300 => "300",
    :width100 => "100",
    
    :thumb700 => "700x700#",
    :thumb500 => "500x500#",
    :thumb300 => "300x300#",
    :thumb100 => "100x100#",
    :thumb50 => "50x50#"
  }
  

end

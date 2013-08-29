class Photo < ActiveRecord::Base
  
  belongs_to :parent, :polymorphic => true
  
  
  #attr_accessible :image
  has_attached_file :image, :styles => { :large => "500x500#", :medium => "200x200#", :thumb => "80x80#" }, :default_url => "/images/:style/missing.png"
  
  
end
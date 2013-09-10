class Painting < ActiveRecord::Base

  has_many :line_items
  before_destroy :ensure_not_refrenced_by_any_line_item

  has_and_belongs_to_many :events
  belongs_to :artist
  has_one :photo, :as => :parent
  
  accepts_nested_attributes_for :photo
  
  validates_presence_of :title, :technique, :width, :height

  private

  def ensure_not_refrenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base,'Line Item present')
      return false
    end  
  end

end

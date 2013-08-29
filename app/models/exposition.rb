class Exposition < Event
  has_and_belongs_to_many :paintings

  has_one :photo, :as => :parent


  def short_summary num=450
    return "" if summary.blank?
    summary.slice 0, num
  end  
  
end

class Popup < Event

  def short_summary num=450
    return "" if summary.blank?
    summary.slice 0, num
  end  

    
end

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  
  $("a.gallery").colorbox({rel: 'group1'})

  viewport = $("#viewport")
  viewport.height 4018
  
  # Click event for any anchor tag that's href starts with #
  $("a[href^=\"#\"]").click (event) ->
    active_id = $(".active").attr("id")
    active = $("#" + active_id)
    clicked_id = $(this).attr("href")
    clicked = $(clicked_id)
    viewpot_height = clicked.height()
    viewport.height viewpot_height + 40
    
    # Fade in new list on callback
    # Adjust outer wrapper to fit new list snuggly
    #viewport.animate({height: viewport_height});
    viewport.slideUp(700, ->
      active.fadeOut 500
      clicked.fadeIn 500
      active.removeClass "active"
      active.addClass "hidden"
      clicked.removeClass "hidden"
      clicked.addClass "active"
    ).slideDown 1000
  
    false


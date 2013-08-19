# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  viewport = $("#viewport")
  
  # height of #content_2009 by hand... sorry!
  viewport.css "height", 4198
  
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
    
sticky_relocate = ->
  window_top = $(window).scrollTop()
  div_top = $("#sticky_anchor").offset().top
  if window_top > div_top
    $("#menu_trajectory").addClass "stick"
  else
    $("#menu_trajectory").removeClass "stick"

$ ->
  $(window).scroll sticky_relocate
  sticky_relocate()
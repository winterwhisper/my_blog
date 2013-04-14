# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $(".post").hover(
    -> $(this).stop().animate({ backgroundColor: "#F6F6F6" }, "fast"), 
    -> $(this).stop().animate({ backgroundColor: "#FFFFFF" }, "fast")
  )
  # $(".post-title a").hover(
  #   -> $(this).stop().animate({ color: "#2ECC71" }, 20), 
  #   -> $(this).stop().animate({ color: "#34495E" }, 20)
  # )
  $("#rencent-post .recent-block").hover(
    -> $(this).children(".block-bg").animate({ "left": "0px" }, "fast"), 
    -> $(this).children(".block-bg").animate({ "left": "-270px" }, "fast")
  )
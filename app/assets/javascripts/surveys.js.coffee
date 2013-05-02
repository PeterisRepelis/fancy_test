$(document).on "click", ".error_popup", ->
  $(this).hide()

start = $.cookie("counter") or 342.1
interv = setInterval(->
  if start < 0.1
    alert "Time is up!"
    clearInterval interv
    $.removeCookie "counter"
  else
    start -= 0.1
    $.cookie "counter", start
    a = start.toString()
    splited = a.split(".")
    $(".time").html (splited[0] + "." + splited[1][0])
    $(".time").html "0.0"  if start < 0.1
, 100)
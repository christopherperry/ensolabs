$(document).ready ->
  $elements = $('.circle span')
  $elements.hide()

  fadeInElements = () ->
    $($elements.get().reverse()).each (i) ->
      $(this).delay(i * 600).fadeIn(600)

  $days = $('#days')
  $hours = $('#hours')
  $minutes = $('#minutes')
  $seconds = $('#seconds')

  updateTime = () ->
    today = new Date()
    todayEpoch = today.getTime()
    target = new Date("27 May, 2013")
    targetEpoch = target.getTime()
    timeDiffSeconds = Math.floor((targetEpoch - todayEpoch) / 1000)
    daysLeft = Math.floor(timeDiffSeconds / (60 * 60 * 24))
    hoursLeft = Math.floor(timeDiffSeconds / (60 * 60)) % 24
    minutesLeft = Math.floor(timeDiffSeconds / 60) % 60
    secondsLeft = timeDiffSeconds % 60
    $days.text daysLeft
    $hours.text hoursLeft
    $minutes.text minutesLeft
    $seconds.text secondsLeft

  updateTime()
  fadeInElements()
  setInterval(updateTime, 1000)

  $emailnotify = $("#email_notify")
  $alert = $(".alert")

  $emailnotify.on("click", () ->
    $emailnotify.hide()
    $alert.show())

  $("[data-hide]").on("click", () ->
    $("." + $(this).attr("data-hide")).hide()
    $emailnotify.show())

  $alert.hide()

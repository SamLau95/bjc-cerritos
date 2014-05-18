isScrolledIntoView = (elem) ->
  docViewTop = $(window).scrollTop()
  docViewBottom = docViewTop + $(window).height()
  elemTop = $(elem).offset().top
  elemBottom = elemTop + $(elem).height()
  docViewBottom > elemTop

ready = ->
  $(window).scroll ->
    if isScrolledIntoView $('#bottom-section')
      $('footer').slideUp()
    else
      $('footer').slideDown()
    

$(document).ready ready
$(document).on 'page:load', ready

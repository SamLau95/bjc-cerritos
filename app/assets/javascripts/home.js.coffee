isScrolledIntoView = (elem) ->
  docViewTop = $(window).scrollTop()
  docViewBottom = docViewTop + $(window).height()
  elemTop = $(elem).offset().top
  elemBottom = elemTop + $(elem).height()
  docViewBottom > elemTop

ready = ->
  if $('#bottom-section').length
    $(window).scroll ->
      if isScrolledIntoView $('#bottom-section')
        $('footer').slideUp()
      else
        $('footer').slideDown()

  $('#payment-dialog').click ->
    $('button.stripe-button-el').click()


$(document).ready ready
$(document).on 'page:load', ready

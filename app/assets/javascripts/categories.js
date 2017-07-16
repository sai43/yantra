$ ->
  $("#menu-links > ul.nav li a").on 'click', (e) ->
    $this = $(this)
    $this.parent().siblings().removeClass('active').end().addClass 'active'
    return


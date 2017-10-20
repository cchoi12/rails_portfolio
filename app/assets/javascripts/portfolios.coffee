#
ready = undefined
# We are storing a variable on ready
ready = ->
  $('.sortable').sortable()
  return

# $(document).ready = when the page finishes loading.
$(document).ready ready

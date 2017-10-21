#
ready = undefined
set_positions = undefined

set_positions = ->
  $('.card').each (i) ->
    # this = self(ruby land) | we then add an attribute 'data-pos' and + 1
    $(this).attr 'data-pos', i + 1
    return
  return

# We are storing a variable on ready
ready = ->
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) -> # .bind will take $(this) and update?
    updated_order = []
    set_positions()
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return

# $(document).ready = when the page finishes loading.
$(document).ready ready

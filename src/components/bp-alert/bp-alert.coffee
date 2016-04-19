Polymer
  is: 'bp-alert'

  properties:
    kind:
      type: String
      value: 'info'

    dismissible:
      type: Boolean
      value: false

  ready: ->
    classes = @.$$('.bp-alert').classList
    classes.add 'alert-' + @.kind if @.kind in [
      'success', 'info', 'warning', 'danger'
    ]
    classes.add 'alert-' + @.dismissible if @.dismissible

    links = @.querySelectorAll 'a'
    _.each links, (link) ->
      link.classList.add 'alert-link'

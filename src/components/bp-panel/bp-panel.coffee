Polymer
  is: 'bp-panel'

  properties:
    kind:
      type: String
      value: 'default'

    title:
      type: String
      value: 'Default Title'

  ready: ->
    classes = @.$$('.bp-panel').classList
    classes.add 'panel-' + @.kind if @.kind in [
      'default', 'primary', 'success', 'info', 'warning', 'danger'
    ]

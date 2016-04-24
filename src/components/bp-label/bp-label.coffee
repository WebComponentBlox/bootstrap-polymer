Polymer
  is: 'bp-label'

  properties:
    kind:
      type: String
      value: 'default'

    block:
      type: Boolean
      value: false

  ready: ->
    classes = @.$$('.bp-label').classList
    classes.add('label-' + @.kind) if @.kind in [
      'default', 'primary', 'success', 'info', 'warning', 'danger'
    ]

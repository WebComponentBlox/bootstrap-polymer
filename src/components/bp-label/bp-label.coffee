Polymer
  is: 'bp-label'

  properties:
    kind: 'default'
    block: 'false'

  ready: ->
    classes = @.$$('.bp-label').classList
    classes.add('label-' + @.kind) if @.kind in [
      'default', 'primary', 'success', 'info', 'warning', 'danger'
    ]

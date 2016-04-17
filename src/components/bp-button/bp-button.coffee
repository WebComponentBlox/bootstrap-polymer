Polymer
  is: 'bp-button'

  properties:
    size: ''
    kind: 'default'
    block: 'false'

  ready: ->
    classes = @.$$('.bp-button').classList
    classes.add('btn-' + @.size) if @.size in [
      'lg', 'sm', 'xs'
    ]
    classes.add('btn-' + @.kind) if @.kind in [
      'default', 'primary', 'success', 'info', 'warning', 'danger', 'link'
    ]
    classes.add('btn-block') if @.block == 'true'

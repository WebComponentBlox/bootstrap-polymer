Polymer
  is: 'bp-button'

  properties:
    size:
      type: String
      value: ''

    kind:
      type: String
      value: 'default'

    block:
      type: Boolean
      value: false

  ready: ->
    classes = @.$$('.bp-button').classList
    classes.add('btn-' + @.size) if @.size in [
      'lg', 'sm', 'xs'
    ]
    classes.add('btn-' + @.kind) if @.kind in [
      'default', 'primary', 'success', 'info', 'warning', 'danger', 'link'
    ]
    classes.add('btn-block') if @.block

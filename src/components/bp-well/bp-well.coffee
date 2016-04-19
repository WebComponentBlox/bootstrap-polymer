Polymer
  is: 'bp-well'

  properties:
    size:
      type: String
      value: ''

  ready: ->
    classes = @.$$('.bp-well').classList
    classes.add('well-' + @.size) if @.size in [
      'lg', 'sm'
    ]

Polymer
  is: 'bp-badge'

  properties:
    count:
      type: Number
      value: 0

    hideEmpty:
      type: Boolean
      value: false

    min:
      type: Number
      value: 0

    max:
      type: Number
      value: 100

  ready: ->
    @count = @min if @count < @min
    @count = @max if @count > @max
    @count = '' if @count is 0 and @hideEmpty
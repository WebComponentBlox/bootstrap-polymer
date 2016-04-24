Polymer
  is: 'bp-button-group'

  properties:
    label:
      type: String
      value: ''

    size:
      type: String
      value: ''

    kind:
      type: String
      value: 'default'

    justified:
      type: Boolean
      value: false

    vertical:
      type: Boolean
      value: false

  ready: ->
    group = @.$$('.bp-button-group')
    group.classList.add('btn-group-vertical') if @.vertical
    group.classList.add('btn-group-justified') if @.justified
    buttons = @.querySelectorAll 'button'
    _.each buttons, (button) =>
      if @.justified
        innerGroup = document.createElement('div');
        innerGroup.classList.add('btn-group')
        group.appendChild(innerGroup);
        innerGroup.appendChild(button)

      classes = button.classList
      classes.add 'btn'
      classes.add('btn-' + @.size) if @.size in [
        'lg', 'sm', 'xs'
      ]
      # TODO only add if not already present - don't overwrite
      classes.add('btn-' + @.kind) if @.kind in [
        'default', 'primary', 'success', 'info', 'warning', 'danger', 'link'
      ]

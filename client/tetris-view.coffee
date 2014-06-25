Backbone = require 'backbone'
$ = Backbone.$ = require 'jquery'
rivets = require 'rivets'

module.exports = class TetrisView extends Backbone.View
  el: '#tetris'

  initialize: ->
    $(document).on 'keydown', @move

  render: ->
    @binding = rivets.bind(@el, {model: @model})
    @

  # remove: ->
  #   @binding.unbind()

  move: (e) =>
    console.log 'move'
    switch e.keyCode
      when 37 then @model.movePiece('left')
      when 39 then @model.movePiece('right')
      when 40 then @model.movePiece('down')

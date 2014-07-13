Backbone = require 'backbone'
$ = Backbone.$ = require 'jquery'
{renderable, div, input, text} = require 'teacup'

module.exports = class TodoView extends Backbone.View
  initialize: (todo) ->
    @todo = todo
    # @todo.on 'change', @render

  todo: null

  template: renderable (todo) ->
    div '.todo', ->
      input type: 'checkbox'
      text todo.text

  render: =>
    @template @todo.attributes

Backbone = require 'backbone'
{renderable, div, li, input, form, button} = require 'teacup'

TodoView = require './todo_view'

module.exports = class TodosView extends Backbone.View
  events:
    'click .submit': 'addTodo'

  initialize: ->
    @todos.on 'change', @render

  template: renderable (todos) ->

    todos.each (todo) ->
      todoView = new TodoView(todo)
      li -> todoView.render()

  addTodo: (e) ->
    debugger
    console.log 'test'

  render: =>
    @$el.append @template @todos

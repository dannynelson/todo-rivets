Backbone = require 'backbone'
$ = Backbone.$ = require 'jquery'
{renderable, div, input, button} = require 'teacup'

App = require '../models/app'
TodosView = require './todos_view'

module.exports = class TodoView extends Backbone.View
  app: new App()

  initialize: (app) ->
    $(document).on 'keyup', @updateSubmission

  template: renderable (todo) ->
    input '.input-text', placeholder: 'grocery shopping'
    button '.submit', 'New Todo'
    new TodosView
      todos: @app.get 'todos'

  render: =>
    @template @app.attributes

  addTodo: (e) ->
    debugger
    console.log 'test'

  updateSubmission: =>
    text = $('.input-text').val()
    @app.updateInputText text

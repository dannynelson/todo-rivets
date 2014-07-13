Todo = require './todo'

module.exports = class Todos
  constructor: ->
    @todos = [
      new Todo('My first todo')
      new Todo('My second todo')
    ]

  inputText: 'grocery shopping'

  completeTodo: (e, target) ->
    target.todo.toggleCompleted()

  addTodo: (e, target) ->
    target.todos.push new Todo target.inputText
    target.inputText = ''

  deleteTodo: (e, target)->
    target.todos.splice target.index, 1

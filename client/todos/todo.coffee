module.exports = class Todo
  constructor: (@text) ->
    @completed = false
    console.log @

  toggleCompleted: =>
    @completed = !@completed

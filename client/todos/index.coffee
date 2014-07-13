rivets = require 'rivets'
$ = require 'jquery'

Todos = require './todos'

rivets.bind $('#todos'), new Todos()

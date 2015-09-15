#example from http://blog.jeroenpelgrims.be/node-streams-in-coffeescript/
{Transform} = require 'stream'

class LessThanStream extends Transform
  constructor: (@config={}, @data={}) ->
        super objectMode: true
    _transform: (message, enc, next) ->
      @push message if @config.left < @config.right
      next()

module.exports = LessThanStream

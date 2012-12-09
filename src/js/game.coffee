window.app or= {}

class app.Game
  constructor: ->
    window.setInterval(@update, 30)

  update: ->
    navigator.accelerometer.getCurrentAcceleration(@onSuccess, @onError)

  onSuccess: (acceleration) ->
    console.log(acceleration.x, acceleration.y)
  onError: ->
    console.log("Fuck shit stack error")

window.app or= {}

class app.Game
  constructor: ->
    @accelerometerWatchID = navigator.accelerometer.watchAcceleration(onSuccess, onError, { frequency: 1000 })
  onSuccess: (acceleration) ->
    console.log("Acceleration X: ", acceleration.x, "Acceleration Y: ",  acceleration.y,  "Acceleration Z: ",  acceleration.z,  "Timestamp: ",  acceleration.timestamp)

  onError: ->
    console.log("Fuck shit stack error")

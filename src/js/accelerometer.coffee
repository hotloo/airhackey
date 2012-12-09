
onDeviceReady = () ->
  startWatch()

startWatch = ->
  option = frequency : 3000
    
stopWatch = ->
  if watchID
    navigator.accelerometer.clearWatch watchID
    watchID = null

onSuccess = (acceleration) ->
  element = document.getElementByID("accelerometer")
  element.innerHTML = "Acceleration X: " + acceleration.x + "\n" + "Acceleration Y: " + acceleration.y + "\n" + "Acceleration Z: " + acceleration.z + "\n" + "Timestamp: " + acceleration.timestamp + "\n"

onError = ->
  alert "onError!"

watchID = null
document.addEventListener "deviceready", onDeviceReady, false

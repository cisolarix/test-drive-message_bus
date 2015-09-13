MessageBus.start()
MessageBus.callbackInterval = 1000
MessageBus.subscribe "/channel", (json) ->
  console.log(json)
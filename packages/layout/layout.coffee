Meteor.startup ->
  require("famous-polyfills")
  require("famous/core/famous")
  Engine = require("famous/core/Engine")
  Surface = require("famous/core/Surface")
  Transform = require("famous/core/Transform")
  StateModifier = require("famous/modifiers/StateModifier")
  Easing = require("famous/transitions/Easing")
  Lightbox = require("famous/views/Lightbox")
  ImageSurface = require("famous/surfaces/ImageSurface")
  Modifier = require("famous/core/Modifier")
  RenderController = require("famous/views/RenderController")
  mainContext = Engine.createContext()
  renderController = new RenderController()

  createSurface = ->
    firstSurface = new Surface(
      size: [
        200
        100
      ]
      content: "Hello Famo.us"
      properties:
        color: "white"
        textAlign: "center"
        backgroundColor: "#FA5C4F"
    )
    mainContext.add(firstSurface)
    return
  createSurface()

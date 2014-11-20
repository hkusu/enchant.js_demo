$ ->

  enchant()

  game = new Core(320, 320)

  game.preload "images/chara1.png"
  game.fps = 20

  game.onload = ->
    bear = new Sprite(32, 32)
    bear.image = game.assets["images/chara1.png"]
    game.rootScene.addChild bear
    bear.frame = [
      6
      6
      7
      7
    ]

    bear.tl.moveBy(288, 0, 10)
    .scaleTo(-1, 1, 10)
    .moveBy(-288, 0, 90)
    .scaleTo(1, 1, 10)
    .loop

    return

  game.start()

  return

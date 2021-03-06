## Tinamou Game Library

import
  tinamou.core,
  tinamou.scene,
  tinamou.transition,
  tinamou.tools,
  tinamou.actions,
  tinamou.sharedinfo,
  tinamou.scenemanager,
  tinamou.imagemanager,
  tinamou.soundmanager,
  tinamou.windowmanager,
  tinamou.fontmanager,
  tinamou.painter,
  tinamou.keyboard,
  tinamou.mouse,
  tinamou.tween,
  tinamou.exception

export
  core,
  scene.BaseScene, scene.init, scene.update, scene.draw,
  transition.Transition, transition.stay, transition.next, transition.final, transition.reset,
  tools.Tools, tools.imageManager, tools.soundManager, tools.windowManager, tools.fontManager,
  actions.Actions, actions.mouse, actions.keyboard,
  sharedinfo.SharedInfo, sharedinfo.NOSHARE,
  scenemanager.SceneManager, scenemanager.newSceneManager, scenemanager.setScene,
  imagemanager.Image, imagemanager.ImageManager, imagemanager.getSrc, imagemanager.isSprite,
  imagemanager.getSpriteSize, imagemanager.setImage, imagemanager.setSprite, imagemanager.getImage,
  soundmanager.Music, soundmanager.SoundEffect, soundmanager.SoundManager,
  soundmanager.play, soundmanager.stopMusic, soundmanager.stopAllEffects,
  soundmanager.setMusic, soundmanager.setEffect, soundmanager.getMusic, soundmanager.getEffect,
  soundmanager.setMusicVolume, soundmanager.setEffectVolume, soundmanager.getMusicVolume, soundmanager.getEffectVolume,
  windowmanager.WindowManager, windowmanager.getWindowSize, windowManager.setWindowSize,
  windowmanager.getResolution, windowmanager.setResolution, windowManager.isFullScreen,
  windowmanager.setFullScreen, windowmanager.alert,
  fontmanager.Font, fontmanager.FontManager, fontmanager.setFont, fontmanager.getFont,
  painter,
  keyboard.Keyboard, keyboard.KeyName, keyboard.isPressed, keyboard.isDown, keyboard.isReleased, keyboard.getPressingKeyNames,
  mouse.Mouse, mouse.MouseButton, mouse.isPressed, mouse.isDown, mouse.isReleased, mouse.getPosition,
  tween,
  exception.TinamouException, exception.`$`, exception.getErrorCode


when isMainModule:
  type
    TestScene = ref object of BaseScene

  proc newTestScene: TestScene =
    new result

  let scenes = newSceneManager()
  scenes.setScene("test", newTestScene())

  echo "This file was compiled on ", CompileDate, " at ", CompileTime

  startGame scenes, "test", "foobar", 600, 400

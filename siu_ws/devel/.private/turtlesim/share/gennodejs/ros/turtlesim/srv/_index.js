
"use strict";

let GetSonar = require('./GetSonar.js')
let SetPen = require('./SetPen.js')
let Spawn = require('./Spawn.js')
let GetCameraImage = require('./GetCameraImage.js')
let TeleportAbsolute = require('./TeleportAbsolute.js')
let Kill = require('./Kill.js')
let TeleportRelative = require('./TeleportRelative.js')
let GetFrameSize = require('./GetFrameSize.js')
let GetTurtles = require('./GetTurtles.js')
let HasTurtle = require('./HasTurtle.js')
let GetPose = require('./GetPose.js')

module.exports = {
  GetSonar: GetSonar,
  SetPen: SetPen,
  Spawn: Spawn,
  GetCameraImage: GetCameraImage,
  TeleportAbsolute: TeleportAbsolute,
  Kill: Kill,
  TeleportRelative: TeleportRelative,
  GetFrameSize: GetFrameSize,
  GetTurtles: GetTurtles,
  HasTurtle: HasTurtle,
  GetPose: GetPose,
};

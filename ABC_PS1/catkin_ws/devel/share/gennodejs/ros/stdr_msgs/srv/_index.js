
"use strict";

let AddRfidTag = require('./AddRfidTag.js')
let AddSoundSource = require('./AddSoundSource.js')
let DeleteRfidTag = require('./DeleteRfidTag.js')
let DeleteCO2Source = require('./DeleteCO2Source.js')
let DeleteSoundSource = require('./DeleteSoundSource.js')
let MoveRobot = require('./MoveRobot.js')
let LoadExternalMap = require('./LoadExternalMap.js')
let RegisterGui = require('./RegisterGui.js')
let AddThermalSource = require('./AddThermalSource.js')
let DeleteThermalSource = require('./DeleteThermalSource.js')
let AddCO2Source = require('./AddCO2Source.js')
let LoadMap = require('./LoadMap.js')

module.exports = {
  AddRfidTag: AddRfidTag,
  AddSoundSource: AddSoundSource,
  DeleteRfidTag: DeleteRfidTag,
  DeleteCO2Source: DeleteCO2Source,
  DeleteSoundSource: DeleteSoundSource,
  MoveRobot: MoveRobot,
  LoadExternalMap: LoadExternalMap,
  RegisterGui: RegisterGui,
  AddThermalSource: AddThermalSource,
  DeleteThermalSource: DeleteThermalSource,
  AddCO2Source: AddCO2Source,
  LoadMap: LoadMap,
};

rawset(_G, "u3a", require("games.fish.core.u3a"))
u3a.LuaObject = require("games.fish.core.LuaObject")
u3a.GameScene = require("games.fish.core.GameScene")
u3a.GameObject = require("games.fish.core.GameObject")
u3a.UIGameObject = require("games.fish.core.UIGameObject")
u3a.FishObject = require("games.fish.core.FishObject")

--require("core.Coroutine")

local scene = require("games.fish.SFish").new()
scene:createRoot()
scene:createAutoPath()
scene:onCreate()
scene:run()



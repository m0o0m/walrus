----------------------------------------------------------------------
-- 作者：lewis
-- 日期：2016-3-31
-- 描述：GameApp
----------------------------------------------------------------------

local M = class("GameApp", AppBase)

function M:run()
	GameAppInstance = M.new()
    GameAppInstance:init()
end

function M:init()
    M.super.init(self)
    self:coroutine(self, "start")
end

function M:start()
    require("src.global.GobalFunc")
    self:runScene("games.fish.SFish")
    do return end
    self:createScene("src.utils.tools.STools") 
    self:createScene("src.utils.sys.SSystem")
    self:createScene("src.utils.update.SAutoUpdate"):play(GetChannelInfo().url)
    self:createScene("src.config.SConfig")
    self:createScene("src.utils.network.SNetWork")
    self:runScene("src.login.SLogin")
end

return M

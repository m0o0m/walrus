----------------------------------------------------------------------
-- 作者：lewis
-- 日期：2016-2-15
-- 描述：鱼对象
----------------------------------------------------------------------

local M = class("GOFish", wls.FishObject)

function M:onCreate(id)
    self:initData(id)
    self:createActionSprite()
    self:initCollider()
    self:setVisible(false)
    self:reset()
    self:getScene():get("fish_layer"):addChild(self, tonumber(self.config.show_layer))
end

function M:removeFromScreen()
    self:setOutOfScreen(true)
    self:setVisible(false)
    self:setAlive(false)
    local trace_type = tonumber(self.config.trace_type)
    if trace_type ~= 5 and trace_type ~= 10 then return end
    self:find("SCSound"):playMusic("music_00" .. wls.RoomIdx)
end

function M:initData(id)
    self.id = id
    self.config = self:find("SCConfig"):get("fish")[id]
    self.vertices = self.config.vertices
    self.raduis_2 = self.config.raduis * self.config.raduis
    self.mFishSpriteList = {}
    self.mFreezeActionList = {}
end

function M:setOffsetPos(pos)
    if pos == nil then return end
    self.mPathOffset.x = pos.x
    self.mPathOffset.y = pos.y
end

function M:reset()
    self:setRed(false)
    self.mPathOffset = cc.p(0, 0)
    self.frameIdx = 1
    self.totalFrame = 0
    self.mCurIdx = 3
    self.mState = wls.FISH_STATE.normal
    self.bRed = false
    self:setScale(1.0)
end

function M:setPath(path)
    self.path = path
    self.frameIdx = 1
    self.totalFrame = #path
    self.mCurIdx = 3
end

function M:updateFrame()
    self.mCurIdx = self.mCurIdx - 1
    if self.mCurIdx <= 0 then
        self.mCurIdx = 3
        self:nextFrame()
    end
    self:updateShadowPos()
end

function M:setRed(bo)
    for _, sprite in ipairs(self.mFishSpriteList) do
        self:find("SCAction"):setRed(sprite, bo)
    end
end

function M:updateShadowPos()
    if self.shadow == nil then return end
    local pos = cc.pAdd(cc.p(self:getPosition()), cc.p(20, -20))
    pos = self:convertToNodeSpaceAR(pos)
    self.shadow:setPosition(pos)
end

-- 跳转到帧
function M:gotoFrame(frame)
    self.frameIdx = frame or 1
    if self.path[frame] == nil then 
        self:outOfFrame()
        return 
    end
    local pos, angle = self:getPathInfo()
    self:setActionSpeed(1)
    self:setOutOfScreen(false)
    self:setAlive(true)
    self:setVisible(true)
    self:setPosition(pos)
    self:updateAngle(angle)
    self:updateFrame()
end

-- 下一帧
function M:nextFrame()
    self.frameIdx = self.frameIdx + 1
    if self.frameIdx > self.totalFrame then 
        self:outOfFrame()
        return 
    end
    local pos, angle = self:getPathInfo()
    self:updateAngle(angle)
    if wls.Skip_Frame then
        self:setPosition(pos)
        return
    end
    self:moveTo(pos, 0.15)
end

function M:getPathInfo()
    local unit = self.path[self.frameIdx]
    local pos = cc.pAdd(self.mPathOffset, unit.pos)
    if not wls.PlayerFlip then 
        return pos, unit.angle
    end
    pos.x = display.width - pos.x
    pos.y = display.height - pos.y
    return pos, unit.angle - 180
end

-- 帧数都走完
function M:outOfFrame()
    self:removeFromScreen()
end

function M:fadeOut()
    local function callback()
        for _, sprite in ipairs(self.mFishSpriteList) do
            sprite:setOpacity(255)
        end
        self:removeFromScreen()
    end
    for _, sprite in ipairs(self.mFishSpriteList) do
        sprite:runAction(cc.Sequence:create(cc.FadeOut:create(0.3), cc.CallFunc:create(callback)))
    end
end

function M:flipFishSprite(bY, bFilp)
    for _, sprite in ipairs(self.mFishSpriteList) do
        if bY then
            sprite:setFlippedY(bFilp)
        else
            sprite:setFlippedX(bFilp)
        end
    end
end

function M:updateAngle(angle)
    local rt = tonumber(self.config.rotate_type)
    if rt == 0 then
        self:setRotation(angle + 90)
    elseif rt == 1 then
        self:setRotation(0)
    elseif rt == 2 then
        angle = angle + 90
        self:setRotation(angle)
        if angle > 90 and angle < 270 then
            self:flipFishSprite(true, true)
        else
            self:flipFishSprite(true, false)
        end
    elseif rt == 3 then
        angle = angle + 90
        self:setRotation(angle)
        if angle > 90 and angle < 270 then
            self:flipFishSprite(false, true)
        else
            self:flipFishSprite(false, false)
        end
    end
end

-- 动作精灵
function M:createActionSprite()
    local sp = cc.Sprite:create()
    self:addChild(sp)
    local strFormat = string.format("%s_%s.png", self.config.fish_res, "%02d")
    local animation = self:find("SCAction"):createAnimation(strFormat, 3 / 20.2)
    local act1 = cc.Speed:create(cc.RepeatForever:create(cc.Animate:create(animation)), 1.0)
    table.insert(self.mFreezeActionList, act1)
    sp:runAction(act1)
    table.insert(self.mFishSpriteList, sp)

    -- 阴影
    local shadow = cc.Sprite:create()
    shadow:setColor(cc.c3b(0, 0, 0))
    shadow:setOpacity(96)
    shadow:setScale(0.8)
    local act2 = cc.Speed:create(cc.RepeatForever:create(cc.Animate:create(animation)), 1.0)
    table.insert(self.mFreezeActionList, act2)
    shadow:runAction(act2)
    self:addChild(shadow, -2)
    self.shadow = shadow
end

function M:onHit(viewID)
    self:setAlive(false)
    self:setRed(false)
    self:find("UIEffect"):playFishDeadEff(self, viewID)
end

function M:onRed()
    if self.bRed then return end
    self:setRed(true)
    self.bRed = true
    local tb =
    {
        cc.DelayTime:create(0.5),
        cc.CallFunc:create(function() self:setRed(false) end),
        cc.DelayTime:create(0.5),
        cc.CallFunc:create(function() self.bRed = false end),
    }
    local act = cc.Sequence:create(tb)
    self:runAction(act)
end

function M:updateState(state)
    if self.mState == state then return end
    self.mState = state
    if state == wls.FISH_STATE.normal then
        self:onNormal()
    elseif state == wls.FISH_STATE.start_freeze then
        self:onStartFreeze()
    elseif state == wls.FISH_STATE.freeze then
    elseif state == wls.FISH_STATE.end_freeze then
    end
end

function M:onNormal()
    self.mCurIdx = 0
    self:setActionSpeed(1)
end

function M:onStartFreeze()
    self:stopMove()
    self:setActionSpeed(0)
end

-- 设置动作速度
function M:setActionSpeed(speed)
    for _, action in ipairs(self.mFreezeActionList) do
        action:setSpeed(speed)
    end
end

return M
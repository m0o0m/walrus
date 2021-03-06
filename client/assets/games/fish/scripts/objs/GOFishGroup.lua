----------------------------------------------------------------------
-- 作者：lewis
-- 日期：2016-2-15
-- 描述：鱼潮
----------------------------------------------------------------------

local M = class("GOFishGroup", wls.FishObject)

function M:onCreate(id)
    self:getScene():get("fish_layer"):addChild(self, 2)
    self.mStartID = id
    self.mCurFrame = 0
end

function M:gotoFrame(frame)
    self:setAlive(true)
    self.mCurFrame = frame
    self.mFishData = self:find("SCConfig"):getFishGroup(self.mStartID)
end

function M:updateFrame()
    local bAllUse = true
    local arrayArgs = {}
    for _, unit in ipairs(self.mFishData) do
        if unit.frame == self.mCurFrame then
            unit.use = true
            arrayArgs.timeline_id = 0
            arrayArgs.id = unit.fisharrid
            arrayArgs.frame = 1
            self:find("SCPool"):createFishArray(arrayArgs)
        end
        if bAllUse and not unit.use then
            bAllUse = false
        end
    end
    self.alive = not bAllUse
    self.mCurFrame = self.mCurFrame + 1
end

return M
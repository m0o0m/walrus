----------------------------------------------------------------------
-- 作者：lewis
-- 日期：2016-2-15
-- 描述：对象池管理器
----------------------------------------------------------------------

local M = class("SCPool", wls.GameObject)

function M:onCreate()
    self.mNetPool = {}
    self.mFishList = {}
    self.mBulletList = {}
    self.mTimeLineList = {}
    self.mFishArrayList = {}
    self.mFishGroupList = {}
end

-- 预先创建鱼
function M:createFishPool()
    local tb = self:find("SCConfig"):get("fish")
    local go = nil
    for _, config in pairs(tb) do
        if tonumber(config.id) < 100000201 then
            for i = 1, 4 do
                if tonumber(config.trace_type) == 4 or tonumber(config.trace_type) == 8 then
                    go = self:createUnnameObject("GOFishChildren", config.id)
                else
                    go = self:createUnnameObject("GOFish", config.id)
                end
                table.insert(self.mFishList, go)
            end
        end
    end
end

-- 预先创建子弹与鱼网
function M:createBulletPool(id)
    for i = 1, wls.MAX_BULLET_CNT do
        local bullet = self:createUnnameObject("GOBullet", id)
        table.insert(self.mBulletList, bullet)
        local net = self:createUnnameObject("GONet", id)
        table.insert(self.mNetPool, net)
    end
end

function M:removeTimeline()
    for _, timeline in ipairs(self.mTimeLineList) do
        wls.SafeRemoveNode(timeline)
    end
    self.mTimeLineList = {}
    for _, array in ipairs(self.mFishArrayList) do
        wls.SafeRemoveNode(array)
    end
    self.mFishArrayList = {}
end

-- 移除已经失效的对象
function M:removeDeadObject(name)
    local list = self[name]
    for i = #list, 1, -1 do
        if not list[i]:isAlive() then
            table.remove(list, i)
        end
    end
end

-- 移除鱼
function M:removeFishFromList(fish)
    for key, val in ipairs(self.mFishList) do
        if fish == val then
            table.remove(self.mFishList, key)
        end
    end
end

-- 所有鱼淡出
function M:allFishFadeOut()
    for _, fish in ipairs(self.mFishList) do
        if fish:isAlive() then
            fish:fadeOut()
        end
    end
end

function M:getFish(id)
    local go = nil
    for _, fish in ipairs(self.mFishList) do
        if fish:isOutOfScreen() and fish.id == id then
            --print("从池中中创建鱼")
            go = fish
            break
        end
    end
    if go == nil then
        local config = self:find("SCConfig"):get("fish")[id]
        if config == nil then
            printError(id)
            return
        end
        if tonumber(config.trace_type) == 4 or tonumber(config.trace_type) == 8 then
            go = self:createUnnameObject("GOFishChildren", id)
        else
            go = self:createUnnameObject("GOFish", id)
        end
        table.insert(self.mFishList, go)
    end
    return go
end

-- 创建鱼
function M:createFish(args)
    local go = self:getFish(args.id)
    if go == nil then return end
    go:reset()
    go.timelineID = args.timeline_id
    go.fishArrayID = args.array_id or 0
    go:setOffsetPos(args.offset)
    local path = self:find("SCConfig"):get("path")[args.path_id]
    go:setPath(path)
    go:gotoFrame(args.cur_frame)
    return go
end

-- 创建普通子弹
function M:createNormalBullet(viewID, id, srcPos, angle)
    local go = nil
    for _, bullet in ipairs(self.mBulletList) do
        if not bullet:isAlive() then
            --print("从池中中创建子弹")
            go = bullet
            break
        end
    end
    if go == nil then
        go = self:createUnnameObject("GOBullet", id)
        table.insert(self.mBulletList, go)
    end
    go:resetBullet(viewID)
    go:launch(id, srcPos, angle)
    return go
end

-- 创建跟踪子弹
function M:createFollowBullet(viewID, id, srcPos, angle)
    local go = nil
    for _, bullet in ipairs(self.mBulletList) do
        if not bullet:isAlive() then
            --print("从池中中创建子弹")
            go = bullet
            break
        end
    end
    if go == nil then
        go = self:createUnnameObject("GOBullet", id)
        table.insert(self.mBulletList, go)
    end
    go:reset(viewID)
    go:follow(id, srcPos, angle)
    return go
end

-- 创建鱼网
function M:createNet(id, pos)
    local go = nil
    for _, net in ipairs(self.mNetPool) do
        if not net:isAlive() and net.id == id then
            go = net
            break
        end
    end
    if go == nil then
        go = self:createUnnameObject("GONet", id)
        table.insert(self.mNetPool, go)
    end
    go:reset()
    go:play(pos)
    return go
end

-- 创建时间线
function M:createTimeLine(idx, frame, bServer)
    local sever = bServer and 90000 or 0
    local id = 320000000 + wls.RoomIdx * 100000 + idx * 1000 + sever
    local go = self:createUnnameObject("GOFishTimeLine", id)
    go:gotoFrame(frame)
    table.insert(self.mTimeLineList, go)
    return go
end

-- 创建鱼群
function M:createFishArray(args)
    local go = self:createUnnameObject("GOFishArray", args.id)
    go.timelineID = args.timeline_id
    go:gotoFrame(args.frame)
    table.insert(self.mFishArrayList, go)
    return go
end

-- 创建鱼潮
function M:createFishGroup(id, frame)
    local go = self:createUnnameObject("GOFishGroup", id)
    go:gotoFrame(frame)
    table.insert(self.mFishGroupList, go)
    return go
end

----------------------------------
-- 测试
----------------------------------

function M:getFollowFish(viewID)
    for _, fish in ipairs(self.mFishList) do
        if fish:isAlive() then
            return fish
        end
    end
end

-- 捕到鱼
function M:killFish(viewID, timelineID, fishArrayID)
    for _, fish in ipairs(self.mFishList) do
        if fish:isAlive() and fish.timelineID == timelineID and fish.fishArrayID == fishArrayID then
            fish:onHit(viewID)
            break
        end
    end
end

return M
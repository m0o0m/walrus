----------------------------------------------------------------------
-- 作者：lewis
-- 日期：2016-2-15
-- 描述：数据配置
----------------------------------------------------------------------

local M = class("SCConfig", GameObject)

function M:onCreate()
    self:parsePath()
    self:parseFish()
end

-- 解析鱼游的路径
function M:parsePath()
    local tb = {}
    for _, val in pairs(self:require("fishpathEx")) do
        local list = {}
        for _, v2 in ipairs(string.split(val.pointdata, ";")) do
            local t2 = string.split(v2, ",")
            local unit = {}
            unit.pos = cc.p(tonumber(t2[1]), tonumber(t2[2]))
            unit.angle = tonumber(t2[3])
            unit.vec = cc.p(math.sin(unit.angle), math.cos(unit.angle))
            table.insert(list, unit)
        end
        tb[val.id] = list
    end
    self:set("path", tb)
end

-- 解析鱼
function M:parseFish()
    local fish = self:require("fish")
    for _, val in pairs(fish) do
        local tb = string.split(val.point_info, ";")
        val.vertices = {}
        for _, str in ipairs(tb) do
            local points = string.split(str, ",")
            table.insert(val.vertices, cc.p(tonumber(points[1]), tonumber(points[2])))
        end
        val.raduis = self:calcRaduisByVertices(val.vertices)
        --print(val.name, val.raduis)
    end
    self:set("fish", fish)
end

function M:calcRaduisByVertices(vertices)
    local raduis = 0
    for _, val in ipairs(vertices) do
        local length = cc.pGetLength(val)
        if length > raduis then
            raduis = length
        end
    end
    return raduis
end

-- 鱼潮数据
function M:getFishGroup(id)
    id = 330000000 + id * 100000
    local fishgroup = self:require("fishgroup")
    local tb = {}
    while true do
        local config = fishgroup[tostring(id)]
        if config == nil then break end
        if config.arrId == "" then break end
        id = id + 1
        local unit = {}
        unit.fisharrid = config.arrId
        unit.frame = tonumber(config.frame)
        unit.endframe = config.endframe
        unit.use = false
        table.insert(tb, unit)
    end
    return tb
end

-- 鱼时间线数据
function M:getFishTimeline(id)
    local timeline = self:require("timeline")
    local tb = {}
    while true do
        local config = timeline[tostring(id)]
        if config == nil then break end
        if config.fishid == "" then break end
        id = id + 1
        local unit = {}
        unit.fishid = config.fishid
        unit.frame = tonumber(config.frame)
        unit.pathid = config.pathid
        unit.use = false
        table.insert(tb, unit)
    end
    return tb
end

return M
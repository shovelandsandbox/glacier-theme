-------------------------------------------------------------------------------
-- Client Lua Script for Dressing
-- Autor : Laurent Indermühle - Honiix
-------------------------------------------------------------------------------
 
require "Apollo"

knVersion = 1

local ktSortArmorSlots = {
    [1] = 16,   -- Weapon
    [2] = 15,   -- Shield
    [3] = 2,    -- Head
}

function Dressing:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self 
    return o
end

function Dressing:Init()
    local bHasConfigureFunction = true
    Apollo.RegisterAddon(self, bHasConfigureFunction, strConfigureButtonText, tDependencies)
end

function Dressing:OnSave(eType)
    if eType ~= GameLib.CodeEnumAddonSaveLevel.Character then return end

    tSaved =
    {
        tWindowLocation = locWindow and locWindowLocation:ToTable() or nil,
        nVersion = knVersion,
        tArmorSets = self.tArmorSets
    }
    return tSaved
end

DressingInst:Init()

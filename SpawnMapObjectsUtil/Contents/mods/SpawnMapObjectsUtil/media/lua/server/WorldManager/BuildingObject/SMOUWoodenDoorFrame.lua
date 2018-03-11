----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

SMOUWoodenDoorFrame = ISWoodenDoorFrame:derive("ISWoodenDoorFrame");

-- create() method overrided to fix the object layer issue in a square
-- which cause frames to spawn above other objects
function SMOUWoodenDoorFrame:create(x, y, z, north, sprite, layer)
    local cell = getWorld():getCell();
    self.sq = cell:getGridSquare(x, y, z);
    self.javaObject = IsoThumpable.new(cell, self.sq, sprite, north, self);
    buildUtil.setInfo(self.javaObject, self);
    -- the wooden wall have 200 base health + 100 per carpentry lvl
    self.javaObject:setMaxHealth(self:getHealth());
    self.javaObject:setHealth(self.javaObject:getMaxHealth());
    -- the sound that will be played when our door frame will be broken
    self.javaObject:setBreakSound("breakdoor");
    -- add the item to the ground
    if layer ~= nil then
        self.sq:AddSpecialObject(self.javaObject, layer);
    else
        self.sq:AddSpecialObject(self.javaObject);
    end
    buildUtil.checkCorner(x,y,z,north, self.javaObject);
    self.javaObject:transmitCompleteItemToServer();
    if self.sq:getZone() then
        self.sq:getZone():setHaveConstruction(true);
    end
end
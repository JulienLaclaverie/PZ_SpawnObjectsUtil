----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

SMOUWoodenWall = ISWoodenWall:derive("SMOUWoodenWall");

-- create() method overrided to fix the object layer issue in a square
-- which cause walls to spawn above other objects
function ISWoodenWall:create(x, y, z, north, sprite, layer)
    local cell = getWorld():getCell();
    self.sq = cell:getGridSquare(x, y, z);
    self.javaObject = IsoThumpable.new(cell, self.sq, sprite, north, self);
    buildUtil.setInfo(self.javaObject, self);
    if not self.health then
        self.javaObject:setMaxHealth(self:getHealth());
    else
        self.javaObject:setMaxHealth(self.health);
    end
    self.javaObject:setHealth(self.javaObject:getMaxHealth());
    self.javaObject:setName(self.name);
    -- the sound that will be played when our wall will be broken
    self.javaObject:setBreakSound("breakdoor");
    -- add the item to the ground
    if layer ~= nil then
        self.sq:AddSpecialObject(self.javaObject, layer);
    else
        self.sq:AddSpecialObject(self.javaObject);
    end
    self.sq:RecalcAllWithNeighbours(true);
    self.javaObject:transmitCompleteItemToServer();
    if self.sq:getZone() then
        self.sq:getZone():setHaveConstruction(true);
    end
end
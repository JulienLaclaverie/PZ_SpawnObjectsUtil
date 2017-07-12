TrapsPlaceholder = {

    fishingNetNorth = "placeholder_constructedobjects_01_15",
    fishingNetWest = "placeholder_constructedobjects_01_14",

};

TrapsPlaceholder.replace = function(square, tileObject)

    local isUsed = false;

    -- FishingNetNorth
    if tileObject:getSprite():getName() == TrapsPlaceholder.fishingNetNorth then

        TrapsPlaceholder.addFishTrap(square, "constructedobjects_01_15", "FishingNet");
        isUsed = true;

    end

    -- fishingNetWest
    if tileObject:getSprite():getName() == TrapsPlaceholder.fishingNetWest then

        TrapsPlaceholder.addFishTrap(square, "constructedobjects_01_14", "FishingNet");
        isUsed = true;

    end

    return isUsed;

end
    
TrapsPlaceholder.addFishTrap = function(square, spriteToUse, trapName)

    local trap = IsoObject.new(square, spriteToUse, trapName);
    square:AddTileObject(trap);
    trap:transmitCompleteItemToClients();
    fishingNet.doTimestamp(trap);

end

SpawnFromPlaceholder.Add({ name = "TrapsPlaceholder", indexModifier = 0 });
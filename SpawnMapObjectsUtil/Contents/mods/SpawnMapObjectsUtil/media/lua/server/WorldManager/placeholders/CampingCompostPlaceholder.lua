-- ================================================
--           PZ_DieTonightMap              
--           File created by Sylvain              
--           Date: 24/06/2017                        
--           Time: 10:32                        
-- ================================================

CampingCompostPlaceholder = {

    campingTentSouth =  "placeholder_camping_compost_01_0",
    campingTentEast =   "placeholder_camping_compost_01_3",
    campfire =          "placeholder_camping_compost_01_6",
    composter =         "placeholder_camping_compost_01_19"

};

CampingCompostPlaceholder.replace = function(square, tileObject)
    -- Place a campfire
    if tileObject:getSprite():getName() == CampingCompostPlaceholder.campfire then
        local args = { x = square:getX(), y = square:getY(), z = square:getZ() };
        if isClient() then
            sendClientCommand(nil, 'camping', 'addCampfire', args);
        else
            camping.addCampfire(square);
            if isServer() then
                camping:transmitCompleteItemToClients();
            end
        end

        -- Remove the placeholder
        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
    end

    -- Place a composter
    if tileObject:getSprite():getName() == CampingCompostPlaceholder.composter then
        -- Remove the placeholder & load the furnace
        tileObject:transmitCompleteItemToClients();

        -- Adding the compost to the world
        local cell = getWorld():getCell();
        local sq = cell:getGridSquare(square:getX(), square:getY(), square:getZ());
        local javaObject = IsoCompost.new(cell, sq);
        --square:AddSpecialObject(javaObject);
        --javaObject:transmitCompleteItemToServer();

        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
    end

    -- Place a camping tent (South)
    if tileObject:getSprite():getName() == CampingCompostPlaceholder.campingTentSouth then
        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
        camping.addTent(square, "camping_01_0");
    end

    -- Place a camping tent (East)
    if tileObject:getSprite():getName() == CampingCompostPlaceholder.campingTentEast then
        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
        camping.addTent(square, "camping_01_3");
    end

    -- Place a Metal drum
    -- FIXME: this is not working for now
    --[[if tileObject:getSprite():getName() == "location_community_park_01_18" then
        -- Remove the placeholder & load metal drum
        tileObject:transmitCompleteItemToClients();
        CityObjects.createMetalDrum(square);

        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject
;    end]]
end
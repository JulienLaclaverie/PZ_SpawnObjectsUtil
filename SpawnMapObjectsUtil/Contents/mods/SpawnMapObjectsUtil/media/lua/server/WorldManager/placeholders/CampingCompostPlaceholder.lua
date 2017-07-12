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

    local isUsed = false;
    if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_camping_compost_01") then

        -- Place a campfire
        if tileObject:getSprite():getName() == CampingCompostPlaceholder.campfire then
            local args = { x = square:getX(), y = square:getY(), z = square:getZ() };
            if isClient() then
                sendClientCommand(nil, 'camping', 'addCampfire', args);
            else
                -- The method camping.addCampfire() didn't work well in this context
                -- so I have implemented the minimal way to build a campfire
                local newCampFire = ISCampfire:new(square:getX(), square:getY(), square:getZ())
                newCampFire:addObject()
                newCampFire:addContainer()
                newCampFire:getObject():transmitCompleteItemToClients()

                if isServer() then
                    camping:transmitCompleteItemToClients();
                end

            end

            isUsed = true;
        end

        -- Place a composter
        if tileObject:getSprite():getName() == CampingCompostPlaceholder.composter then
            -- Remove the placeholder & load the furnace
            tileObject:transmitCompleteItemToClients();

            -- Adding the compost to the world
            local cell = getWorld():getCell();
            local sq = cell:getGridSquare(square:getX(), square:getY(), square:getZ());
            local javaObject = IsoCompost.new(cell, sq);

            isUsed = true;
        end

        -- Place a camping tent (South)
        if tileObject:getSprite():getName() == CampingCompostPlaceholder.campingTentSouth then
            camping.addTent(square, "camping_01_0");
            isUsed = true;
        end

        -- Place a camping tent (East)
        if tileObject:getSprite():getName() == CampingCompostPlaceholder.campingTentEast then
            camping.addTent(square, "camping_01_3");
            isUsed = true;
        end

    end
    return isUsed;
end


SpawnFromPlaceholder.Add({ name = "CampingCompostPlaceholder", indexModifier = 0 });
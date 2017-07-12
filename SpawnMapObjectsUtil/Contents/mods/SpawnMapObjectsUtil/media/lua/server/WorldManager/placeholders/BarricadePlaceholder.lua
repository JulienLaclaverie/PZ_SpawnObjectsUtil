-- ================================================
--           PZ_DieTonightMap              
--           File created by Sylvain              
--           Date: 26/06/2017                        
--           Time: 07:17                        
-- ================================================

BarricadePlaceholder = {

    -- Wooden barricades
    singleBarricadeExterior =       {right="placeholder_carpentry_01_0", left="placeholder_carpentry_01_1", amount=1},
    doubleBarricadeExterior =       {right="placeholder_carpentry_01_2", left="placeholder_carpentry_01_3", amount=2},
    tripleBarricadeExterior =       {right="placeholder_carpentry_01_4", left="placeholder_carpentry_01_5", amount=3},
    quadrupleBarricadeExterior =    {right="placeholder_carpentry_01_6", left="placeholder_carpentry_01_7", amount=4},
    singleBarricadeInterior =       {right="placeholder_carpentry_01_8", left="placeholder_carpentry_01_9", amount=1},
    doubleBarricadeInterior =       {right="placeholder_carpentry_01_10", left="placeholder_carpentry_01_11", amount=2},
    tripleBarricadeInterior =       {right="placeholder_carpentry_01_12", left="placeholder_carpentry_01_13", amount=3},
    quadrupleBarricadeInterior =    {right="placeholder_carpentry_01_14", left="placeholder_carpentry_01_15", amount=4},

    -- Metal sheet barricades
    healthyMetalBarricadeInterior = { right="placeholder_constructedobjects_01_24", left="placeholder_constructedobjects_01_25", condition=5 }, -- cond=10
    damagedMetalBarricadeInterior = { right="placeholder_constructedobjects_01_26", left="placeholder_constructedobjects_01_27", condition=5 },
    healthyMetalBarricadeExterior = { right="placeholder_constructedobjects_01_28", left="placeholder_constructedobjects_01_29", condition=5 }, -- cond=10
    damagedMetalBarricadeExterior = { right="placeholder_constructedobjects_01_30", left="placeholder_constructedobjects_01_31", condition=5 },

    -- Metal bar barricades
    metalBarBarricadeExterior = { right="placeholder_constructedobjects_01_52", left="placeholder_constructedobjects_01_53", condition=6 },
    metalBarBarricadeInterior = { right="placeholder_constructedobjects_01_55", left="placeholder_constructedobjects_01_54", condition=6 },

};

BarricadePlaceholder.matchBarricade = function(sprite)
    local output = { barricade = nil, isRight = false, isBehind = false, isMetal = false, isMetalBar = false };

    -- Wooden Barricades
    if luautils.stringStarts(sprite, "placeholder_carpentry_01") then
        if sprite == BarricadePlaceholder.singleBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.singleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.singleBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.singleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.doubleBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.doubleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.doubleBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.doubleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.tripleBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.tripleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.tripleBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.tripleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.quadrupleBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.quadrupleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.quadrupleBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.quadrupleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == BarricadePlaceholder.singleBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.singleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.singleBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.singleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.doubleBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.doubleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.doubleBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.doubleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.tripleBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.tripleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.tripleBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.tripleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.quadrupleBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.quadrupleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == BarricadePlaceholder.quadrupleBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.quadrupleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end
    end

    -- Metal Sheet & Metal Bar Barricades
    if luautils.stringStarts(sprite, "placeholder_constructedobjects_01") then
        -- Metal Sheet
        if sprite == BarricadePlaceholder.healthyMetalBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.healthyMetalBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.healthyMetalBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.healthyMetalBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.damagedMetalBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.damagedMetalBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.damagedMetalBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.damagedMetalBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.healthyMetalBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.healthyMetalBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.healthyMetalBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.healthyMetalBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.damagedMetalBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.damagedMetalBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == BarricadePlaceholder.damagedMetalBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.damagedMetalBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetal = true;
        end

        -- Metal Bar
        if sprite == BarricadePlaceholder.metalBarBarricadeInterior.right then
            output.barricade = BarricadePlaceholder.metalBarBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetalBar = true;
        end

        if sprite == BarricadePlaceholder.metalBarBarricadeInterior.left then
            output.barricade = BarricadePlaceholder.metalBarBarricadeInterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetalBar = true;
        end

        if sprite == BarricadePlaceholder.metalBarBarricadeExterior.right then
            output.barricade = BarricadePlaceholder.metalBarBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetalBar = true;
        end

        if sprite == BarricadePlaceholder.metalBarBarricadeExterior.left then
            output.barricade = BarricadePlaceholder.metalBarBarricadeExterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetalBar = true;
        end
    end
    return output;
end

BarricadePlaceholder.replace = function(square, tileObject)
    local isUsed = false;
    if tileObject:getSprite():getName() then
        local args = BarricadePlaceholder.matchBarricade(tileObject:getSprite():getName());
        if args.barricade ~= nil then
            local barricable = BarricadePlaceholder.getBarricadeAble(square, args);
            if barricable ~= nil then
                BarricadePlaceholder.placeBarricade(barricable, args);
                isUsed = true;
            end
        end
    end
    return isUsed
end

BarricadePlaceholder.getBarricadeAble = function(square, data)
    local goodSquare = square;
    if data.isBehind then
        local x = square:getX();
        local y = square:getY();
        if data.isRight then
            x = square:getX() + 1;
        else
            y = square:getY() + 1;
        end
        goodSquare = getCell():getGridSquare(x, y, square:getZ());
    end
    if goodSquare then
        for i=0,goodSquare:getObjects():size()-1 do
            if goodSquare:getObjects() then
                local o = goodSquare:getObjects():get(i);
                if instanceof(o, 'BarricadeAble') then
                    return o
                end
            end
        end
    end
    return nil
end

BarricadePlaceholder.placeBarricade = function(object, args)
    local barricade = IsoBarricade.AddBarricadeToObject(object, args.isBehind);

    if barricade then

        if args.isMetal then
            local metal = InventoryItemFactory.CreateItem('Base.SheetMetal');
            metal:setCondition(args.barricade.condition);
            barricade:addMetal(nil, metal);
            barricade:transmitCompleteItemToClients();
        elseif args.isMetalBar then
            local metal = InventoryItemFactory.CreateItem('Base.MetalBar');
            metal:setCondition(args.barricade.condition);
            barricade:addMetalBar(nil, metal);
            barricade:transmitCompleteItemToClients();
        else
            local plank = InventoryItemFactory.CreateItem('Base.Plank');
            for i=0, args.barricade.amount - 1 do
                barricade:addPlank(nil, plank);

                if isServer() then
                    if barricade:getNumPlanks() == 1 then
                        barricade:transmitCompleteItemToClients();
                    else
                        barricade:sendObjectChange('state');
                    end
                end
            end
        end
    end

end


SpawnFromPlaceholder.Add({ name = "BarricadePlaceholder", indexModifier = 0 });
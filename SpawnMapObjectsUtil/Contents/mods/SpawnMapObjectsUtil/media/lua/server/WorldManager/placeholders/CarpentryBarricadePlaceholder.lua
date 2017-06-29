-- ================================================
--           PZ_DieTonightMap              
--           File created by Sylvain              
--           Date: 26/06/2017                        
--           Time: 07:17                        
-- ================================================

CarpentryBarricadePlaceholder = {

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

CarpentryBarricadePlaceholder.matchBarricade = function(sprite)
    local output = { barricade = nil, isRight = false, isBehind = false, isMetal = false, isMetalBar = false };

    -- Wooden Barricades
    if luautils.stringStarts(sprite, "placeholder_carpentry_01") then
        if sprite == CarpentryBarricadePlaceholder.singleBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.singleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.singleBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.singleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.doubleBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.doubleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.doubleBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.doubleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.tripleBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.tripleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.tripleBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.tripleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.quadrupleBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.quadrupleBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.quadrupleBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.quadrupleBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
        end

        if sprite == CarpentryBarricadePlaceholder.singleBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.singleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.singleBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.singleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.doubleBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.doubleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.doubleBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.doubleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.tripleBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.tripleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.tripleBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.tripleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.quadrupleBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.quadrupleBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
        end

        if sprite == CarpentryBarricadePlaceholder.quadrupleBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.quadrupleBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
        end
    end

    -- Metal Sheet & Metal Bar Barricades
    if luautils.stringStarts(sprite, "placeholder_constructedobjects_01") then
        -- Metal Sheet
        if sprite == CarpentryBarricadePlaceholder.healthyMetalBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.healthyMetalBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.healthyMetalBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.healthyMetalBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.damagedMetalBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.damagedMetalBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.damagedMetalBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.damagedMetalBarricadeInterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.healthyMetalBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.healthyMetalBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.healthyMetalBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.healthyMetalBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.damagedMetalBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.damagedMetalBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetal = true;
        end

        if sprite == CarpentryBarricadePlaceholder.damagedMetalBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.damagedMetalBarricadeExterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetal = true;
        end

        -- Metal Bar
        if sprite == CarpentryBarricadePlaceholder.metalBarBarricadeInterior.right then
            output.barricade = CarpentryBarricadePlaceholder.metalBarBarricadeInterior;
            output.isRight = true;
            output.isBehind = false;
            output.isMetalBar = true;
        end

        if sprite == CarpentryBarricadePlaceholder.metalBarBarricadeInterior.left then
            output.barricade = CarpentryBarricadePlaceholder.metalBarBarricadeInterior;
            output.isRight = false;
            output.isBehind = true;
            output.isMetalBar = true;
        end

        if sprite == CarpentryBarricadePlaceholder.metalBarBarricadeExterior.right then
            output.barricade = CarpentryBarricadePlaceholder.metalBarBarricadeExterior;
            output.isRight = true;
            output.isBehind = true;
            output.isMetalBar = true;
        end

        if sprite == CarpentryBarricadePlaceholder.metalBarBarricadeExterior.left then
            output.barricade = CarpentryBarricadePlaceholder.metalBarBarricadeExterior;
            output.isRight = false;
            output.isBehind = false;
            output.isMetalBar = true;
        end
    end
    return output;
end

CarpentryBarricadePlaceholder.replace = function(square, tileObject)
    local isUsed = false;
    if tileObject:getSprite():getName() then
        local args = CarpentryBarricadePlaceholder.matchBarricade(tileObject:getSprite():getName());
        if args.barricade ~= nil then
            local barricable = CarpentryBarricadePlaceholder.getBarricadeAble(square, args);
            if barricable ~= nil then
                CarpentryBarricadePlaceholder.placeBarricade(barricable, args);
                isUsed = true;
            end
        end
    end
    return isUsed
end

CarpentryBarricadePlaceholder.getBarricadeAble = function(square, data)
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

CarpentryBarricadePlaceholder.placeBarricade = function(object, args)
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

                if barricade:getNumPlanks() == 1 then
                    barricade:transmitCompleteItemToClients();
                else
                    barricade:sendObjectChange('state');
                end
            end
        end
    end

end


SpawnFromPlaceholder.Add({ name = "CarpentryBarricadePlaceholder", indexModifier = 0 });
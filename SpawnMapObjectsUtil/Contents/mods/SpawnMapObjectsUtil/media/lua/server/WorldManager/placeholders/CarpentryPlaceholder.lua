-- ================================================
--           PZ_DieTonightMap              
--           File created by Sylvain              
--           Date: 26/06/2017                        
--           Time: 07:17                        
-- ================================================

CarpentryPlaceholder = {

    singleBarricadeExterior =       {right="placeholder_carpentry_01_0", left="placeholder_carpentry_01_1", amount=1},
    doubleBarricadeExterior =       {right="placeholder_carpentry_01_2", left="placeholder_carpentry_01_3", amount=2},
    tripleBarricadeExterior =       {right="placeholder_carpentry_01_4", left="placeholder_carpentry_01_5", amount=3},
    quadrupleBarricadeExterior =    {right="placeholder_carpentry_01_6", left="placeholder_carpentry_01_7", amount=4},
    singleBarricadeInterior =       {right="placeholder_carpentry_01_8", left="placeholder_carpentry_01_9", amount=1},
    doubleBarricadeInterior =       {right="placeholder_carpentry_01_10", left="placeholder_carpentry_01_11", amount=2},
    tripleBarricadeInterior =       {right="placeholder_carpentry_01_12", left="placeholder_carpentry_01_13", amount=3},
    quadrupleBarricadeInterior =    {right="placeholder_carpentry_01_14", left="placeholder_carpentry_01_15", amount=4},

};

CarpentryPlaceholder.matchBarricade = function(sprite)
    local ouputBarricade;
    if luautils.stringStarts(sprite, "placeholder_carpentry_01") then
        if sprite == CarpentryPlaceholder.singleBarricadeExterior.right or sprite == CarpentryPlaceholder.singleBarricadeExterior.left then
            ouputBarricade = CarpentryPlaceholder.singleBarricadeExterior;
        end

        if sprite == CarpentryPlaceholder.doubleBarricadeExterior.right or sprite == CarpentryPlaceholder.doubleBarricadeExterior.left then
            ouputBarricade = CarpentryPlaceholder.doubleBarricadeExterior;
        end

        if sprite == CarpentryPlaceholder.tripleBarricadeExterior.right or sprite == CarpentryPlaceholder.tripleBarricadeExterior.left then
            ouputBarricade = CarpentryPlaceholder.tripleBarricadeExterior;
        end

        if sprite == CarpentryPlaceholder.quadrupleBarricadeExterior.right or sprite == CarpentryPlaceholder.quadrupleBarricadeExterior.left then
            ouputBarricade = CarpentryPlaceholder.quadrupleBarricadeExterior;
        end

        if sprite == CarpentryPlaceholder.singleBarricadeInterior.right or sprite == CarpentryPlaceholder.singleBarricadeInterior.left then
            ouputBarricade = CarpentryPlaceholder.singleBarricadeInterior;
        end

        if sprite == CarpentryPlaceholder.doubleBarricadeInterior.right or sprite == CarpentryPlaceholder.doubleBarricadeInterior.left then
            ouputBarricade = CarpentryPlaceholder.doubleBarricadeInterior;
        end

        if sprite == CarpentryPlaceholder.tripleBarricadeInterior.right or sprite == CarpentryPlaceholder.tripleBarricadeInterior.left then
            ouputBarricade = CarpentryPlaceholder.tripleBarricadeInterior;
        end

        if sprite == CarpentryPlaceholder.quadrupleBarricadeInterior.right or sprite == CarpentryPlaceholder.quadrupleBarricadeInterior.left then
            ouputBarricade = CarpentryPlaceholder.quadrupleBarricadeInterior;
        end
    end
    return ouputBarricade;
end

CarpentryPlaceholder.replace = function(square, tileObject)
    local barricadeData = CarpentryPlaceholder.matchBarricade(tileObject:getSprite():getName());
    if barricadeData ~= nil then
        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
        local barricable = CarpentryPlaceholder.getBarricadeAble(square:getX(), square:getY(), square:getZ(), tileObject:getObjectIndex());
        CarpentryPlaceholder.placeBarricade(barricable, barricadeData);
    end
end

CarpentryPlaceholder.getBarricadeAble = function(x, y, z, index)
    local sq = getCell():getGridSquare(x, y, z)
    if sq and index >= 0 and index < sq:getObjects():size() then
        o = sq:getObjects():get(index)
        if instanceof(o, 'BarricadeAble') then
            return o
        end
    end
    return nil
end

CarpentryPlaceholder.placeBarricade = function(object, barricadeData)
    --fixme : need a character in the place of false
    local barricade = IsoBarricade.AddBarricadeToObject(object, false) ;

    if barricade then
        local plank = InventoryItemFactory.CreateItem('Base.Plank');

        for i=0, barricadeData.amount - 1 do
            barricade:addPlank(character, plank);

            if barricade:getNumPlanks() == 1 then
                barricade:transmitCompleteItemToClients();
            else
                barricade:sendObjectChange('state');
            end
        end
    end

end
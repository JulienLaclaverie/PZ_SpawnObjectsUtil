SpawnFromPlaceholder = {

    placeholders = {}

};

SpawnFromPlaceholder.onGridsquareLoaded = function(sq)

    for i=0,sq:getObjects():size()-1 do
        if sq:getObjects() then
            local tileObject = sq:getObjects():get(i);
            if tileObject then
                if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_") then
                    for key,ph in ipairs(SpawnFromPlaceholder.placeholders) do
                        if ph.name ~= nil then
                            if ph.fn == nil then
                                ph.fn = _G[ph.name];
                            end
                            local isOnlyRemoved = ph.fn.replace(sq, tileObject);
                            if isOnlyRemoved == true then
                                SpawnFromPlaceholder.removePlaceholderFromSquare(sq, tileObject);
                                i = i + ph.indexModifier;
                            end
                        end
                    end
                end
            end
        end
    end

end

SpawnFromPlaceholder.removePlaceholderFromSquare = function(square, tileObject)
    square:transmitRemoveItemFromSquare(tileObject);
    square:RemoveTileObject(tileObject);
end

SpawnFromPlaceholder.Add = function(placeholder)
    table.insert(SpawnFromPlaceholder.placeholders, placeholder);
end

Events.LoadGridsquare.Add(SpawnFromPlaceholder.onGridsquareLoaded);
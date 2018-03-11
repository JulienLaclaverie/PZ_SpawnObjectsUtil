----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

SpawnFromPlaceholder = {

    placeholders = {}

};

SpawnFromPlaceholder.onGridsquareLoaded = function(sq)
    local tileToRemove = {};
    for i=0,sq:getObjects():size()-1 do
        if sq:getObjects() then
            local tileObject = sq:getObjects():get(i);
            if tileObject then
                if tileObject:getSprite():getName() ~= nil then
                    if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_") then
                        for key,ph in ipairs(SpawnFromPlaceholder.placeholders) do
                            if ph.name ~= nil then
                                if ph.fn == nil then
                                    ph.fn = _G[ph.name];
                                end
                                local isOnlyRemoved = ph.fn.replace(sq, tileObject, i);
                                if isOnlyRemoved == true then
                                    SpawnFromPlaceholder.removePlaceholderFromSquare(sq, tileObject);
                                end
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

SpawnFromPlaceholder.Remove = function(placeholdersToRemove)
    SpawnFromPlaceholder.placeholdersToRemove = placeholdersToRemove;
end

local RemovePlaceholders = function()
    if SpawnFromPlaceholder.placeholdersToRemove ~= nil then
        print("[SpawnMapObjectsUtil-INFO] Removing some placeholder programmatically");
        for key,name in ipairs(SpawnFromPlaceholder.placeholdersToRemove) do
            for i,ph in ipairs(SpawnFromPlaceholder.placeholders) do
                if ph.name ~= nil and ph.name == name then
                    table.remove(SpawnFromPlaceholder.placeholders, i);
                    break;
                end
            end
        end
    end
end

Events.LoadGridsquare.Add(SpawnFromPlaceholder.onGridsquareLoaded);
Events.OnGameStart.Add(RemovePlaceholders);
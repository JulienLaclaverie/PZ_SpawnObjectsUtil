SpawnFromPlaceholder = {};

SpawnFromPlaceholder.onGridsquareLoaded = function(sq)

    for i=0,sq:getObjects():size()-1 do
        if sq:getObjects() then
            local tileObject = sq:getObjects():get(i);
            local isOnlyRemoved = false;
            if tileObject then
                ZombiePlaceholder.replace(sq, tileObject);
                CampingCompostPlaceholder.replace(sq, tileObject);
                isOnlyRemoved = DroppedFoodItemsPlaceholder.replace(sq, tileObject);
                isOnlyRemoved = DroppedTrashItemsPlaceholder.replace(sq, tileObject);
                isOnlyRemoved = DroppedWeaponsItemsPlaceholder.replace(sq, tileObject);
                if (isOnlyRemoved == true) then
                    i = i-1;
                    isOnlyRemoved = false;
                end
            end
        end
    end

end

SpawnFromPlaceholder.removePlaceholderFromSquare = function(square, tileObject)
    square:transmitRemoveItemFromSquare(tileObject);
    square:RemoveTileObject(tileObject);
end

Events.LoadGridsquare.Add(SpawnFromPlaceholder.onGridsquareLoaded);
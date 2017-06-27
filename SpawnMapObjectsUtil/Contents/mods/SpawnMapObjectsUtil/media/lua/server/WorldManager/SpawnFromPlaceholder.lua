SpawnFromPlaceholder = {};

SpawnFromPlaceholder.onGridsquareLoaded = function(sq)

    for i=0,sq:getObjects():size()-1 do
        if sq:getObjects() then
            local tileObject = sq:getObjects():get(i);
            if tileObject then
                ZombiePlaceholder.replace(sq, tileObject);
                CampingCompostPlaceholder.replace(sq, tileObject);
                --DroppedFoodItemsPlaceholder.replace(sq, tileObject);
                --DroppedTrashItemsPlaceholder.replace(sq, tileObject);
                --DroppedWeaponsItemsPlaceholder.replace(sq, tileObject);
            end
        end
    end

end

SpawnFromPlaceholder.removePlaceholderFromSquare = function(square, tileObject)
    square:transmitRemoveItemFromSquare(tileObject);
    square:RemoveTileObject(tileObject);
end

Events.LoadGridsquare.Add(SpawnFromPlaceholder.onGridsquareLoaded);
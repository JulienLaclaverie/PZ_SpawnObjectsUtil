-- ================================================
--           PZ_SpawnObjectsUtil
--           File created by Sylvain              
--           Date: 22/06/2017                        
--           Time: 22:12                        
-- ================================================

SpawnFromPlaceholder = {};

SpawnFromPlaceholder.onGridsquareLoaded = function(sq)

    for i=0,sq:getObjects():size()-1 do
        if sq:getObjects() then
            local tileObject = sq:getObjects():get(i);
            if tileObject then

                ZombiePlaceholder.replace(sq, tileObject);

            end
        end
    end

end

Events.LoadGridsquare.Add(SpawnFromPlaceholder.onGridsquareLoaded);
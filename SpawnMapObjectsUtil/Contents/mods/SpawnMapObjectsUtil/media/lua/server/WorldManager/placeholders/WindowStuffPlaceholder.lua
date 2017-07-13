----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

WindowStuffPlaceholder = {

    windowBreakerSprites = { right="placeholder_windows_01_0", left="placeholder_windows_01_1" },
    windowCleanerSprites = { right="placeholder_windows_01_2", left="placeholder_windows_01_3" },
    addSheetRopeExteriorSprites  = { right="placeholder_windows_01_4", left="placeholder_windows_01_5" },
    addSheetRopeInteriorSprites  = { right="placeholder_windows_01_6", left="placeholder_windows_01_7" },

};

WindowStuffPlaceholder.matchPlaceholders = function(sprite)
    local output;

    if luautils.stringStarts(sprite, "placeholder_windows_01") then
        output = {};

        -- Window Breaker
        if sprite == WindowStuffPlaceholder.windowBreakerSprites.left or sprite == WindowStuffPlaceholder.windowBreakerSprites.right then
            output.isWindowBreaker = true;
        end

        -- Window Cleaner
        if sprite == WindowStuffPlaceholder.windowCleanerSprites.left or sprite == WindowStuffPlaceholder.windowCleanerSprites.right then
            output.isWindowCleaner = true;
        end

        -- Add Sheet rope
        if sprite == WindowStuffPlaceholder.addSheetRopeExteriorSprites.left then
            output.isSheetRope = true;
            output.isRight = false;
            output.isBehind = false;
        end
        if sprite == WindowStuffPlaceholder.addSheetRopeExteriorSprites.right then
            output.isSheetRope = true;
            output.isRight = true;
            output.isBehind = false;
        end
        if sprite == WindowStuffPlaceholder.addSheetRopeInteriorSprites.left then
            output.isSheetRope = true;
            output.isRight = false;
            output.isBehind = true;
        end
        if sprite == WindowStuffPlaceholder.addSheetRopeInteriorSprites.right then
            output.isSheetRope = true;
            output.isRight = true;
            output.isBehind = true;
        end
    end

    return output;
end

WindowStuffPlaceholder.replace = function(square, tileObject)
    local isUsed = false;
    if tileObject:getSprite():getName() then

        local args = WindowStuffPlaceholder.matchPlaceholders(tileObject:getSprite():getName());
        if args ~= nil then

            local windowTile = BarricadePlaceholder.getBarricadeAble(square, args);
            if windowTile ~= nil then
                if args.isWindowBreaker then
                    windowTile:smashWindow();
                    isUsed = true;
                elseif args.isWindowCleaner then
                    windowTile:smashWindow();
                    windowTile:removeBrokenGlass();
                    isUsed = true;
                elseif args.isSheetRope then
                    local player;
                    --[[if windowTile ~= nil then
                        print("Toggling window", "tile="..tostring(windowTile), "isLocked="..tostring(windowTile:isLocked()), "room="..tostring(square:getRoom()))
                        if not windowTile:IsOpen() then
                            windowTile:ToggleWindow(player);
                        end
                    end]]

                    if IsoWindowFrame.isWindowFrame(windowTile) then
                        IsoWindowFrame.addSheetRope(windowTile, player, "SheetRope");
                        isUsed = true;
                    elseif instanceof(windowTile, 'IsoWindow') then
                        local itemType = "SheetRope";
                        local north = not args.isRight;
                        local sq = windowTile:getSquare();
                        -- boolean
                        local bLast = false;
                        -- int
                        local n = 0;
                        -- byte
                        local i = 0;
                        if(north) then
                            i = 1;
                        end

                        -- boolean
                        local south = false;
                        -- boolean
                        local east = false;
                        -- IsoGridSquare
                        local sqe;
                        -- IsoGridSquare
                        local sqn;
                        -- IsoCell
                        local cell = getCell();
                        if(sq:TreatAsSolidFloor()) then
                            if(not north) then
                                sqe = cell:getGridSquare(sq:getX() - 1, sq:getY(), sq:getZ());
                                if(sqe ~= nil) then
                                east = true;
                                i = 3;
                                end
                            else
                                sqn = cell:getGridSquare(sq:getX(), sq:getY() - 1, sq:getZ());
                                if(sqn ~= nil) then
                                    south = true;
                                    i = 4;
                                end
                            end
                        end

                        sq:getProperties():Is(IsoFlagType.solidfloor);

                        while(sq ~= nil) do
                            local d = "crafted_01_" .. i;
                            if(n > 0) then
                                if(east) then
                                    d = "crafted_01_10";
                                elseif(south) then
                                    d = "crafted_01_13";
                                else
                                    d = "crafted_01_" .. (i + 8);
                                end
                            end

                            -- IsoObject
                            local sheetTop = IsoObject.new(cell, sq, d);
                            sheetTop:setName(itemType);
                            sq:getObjects():add(sheetTop);
                            sheetTop:transmitCompleteItemToClients();

                            if(south and n == 0) then
                                sq = sqn;
                                sheetTop = IsoObject.new(cell, sqn, "crafted_01_5");
                                sheetTop:setName(itemType);
                                sheetTop.sheetRope = true;
                                sqn:getObjects():add(sheetTop);
                                sheetTop:transmitCompleteItemToClients();
                            end

                            if(east and n == 0) then
                                sq = sqe;
                                sheetTop = IsoObject.new(cell, sqe, "crafted_01_2");
                                sheetTop:setName(itemType);
                                sheetTop.sheetRope = true;
                                sqe:getObjects():add(sheetTop);
                                sheetTop:transmitCompleteItemToClients();
                            end

                            sq:RecalcProperties();
                            sq:getProperties():UnSet(IsoFlagType.solidtrans);

                            --[[if(isServer()) then
                                if(n == 0) then
                                    player.sendObjectChange("removeOneOf", {type = "Nails"});
                                end
                                player.sendObjectChange("removeOneOf", {type = itemType});
                            else
                                if(n == 0) then
                                    player.getInventory().RemoveOneOf("Nails");
                                end
                                player.getInventory().RemoveOneOf(itemType);
                            end]]

                            n = n + 1;
                            if(bLast) then
                                break;
                            end

                            sq = cell:getOrCreateGridSquare(sq:getX(), sq:getY(), (sq:getZ() - 1));
                            if(sq ~= nil and sq:TreatAsSolidFloor()) then
                                bLast = true;
                            end
                        end
                        isUsed = true;
                    end
                end
            end

        end

    end
    return isUsed
end

SpawnFromPlaceholder.Add({ name = "WindowStuffPlaceholder", indexModifier = 0 });
-- ================================================
--           PZ_DieTonightMap              
--           File created by Sylvain              
--           Date: 29/06/2017                        
--           Time: 17:50                        
-- ================================================

WindowStuffPlaceholder = {

    windowBreakerSprites = { right="placeholder_windows_01_0", left="placeholder_windows_01_1" },
    windowCleanerSprites = { right="placeholder_windows_01_2", left="placeholder_windows_01_3" },

    addSheetRopeSprites  = { right="placeholder_windows_01_4", left="placeholder_windows_01_5" },

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
        if sprite == WindowStuffPlaceholder.addSheetRopeSprites.left or sprite == WindowStuffPlaceholder.addSheetRopeSprites.right then
            output.isSheetRope = true;
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
                    local player = getSpecificPlayer(0);
                    --[[if isClient() then
                        local args = { x=windowTile:getX(), y=windowTile:getY(), z=windowTile:getZ(), index=windowTile:getObjectIndex(), itemType="SheetRope" }
                        sendClientCommand(player, 'object', 'addSheetRope', args)
                    else]]
                    if IsoWindowFrame.isWindowFrame(windowTile) then
                        print("Tile is Frame")
                        IsoWindowFrame.addSheetRope(windowTile, player, "SheetRope");
                        -- isUsed = true;
                    elseif instanceof(windowTile, 'IsoWindow') or instanceof(windowTile, 'IsoThumpable') then
                        print("Tile is IsoWindow")
                        windowTile:addSheetRope(player, "SheetRope");
                        -- isUsed = true;
                    end
                end
            end

        end

    end
    return isUsed
end

SpawnFromPlaceholder.Add({ name = "WindowStuffPlaceholder", indexModifier = 0 });
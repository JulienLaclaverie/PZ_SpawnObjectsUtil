-- ====================================================
--                  SpawnObjectUtil
--            Custom placeholder example
--   Place this file in media/lua/server/WorldManager
-- ====================================================

YourCustomFilePlaceholder = {

    -- With X the number of the tile, starting at 0 (top-left corner)
    placeholder_name = "placeholder_custom_tile_name_X",

};

YourCustomFilePlaceholder.replace = function(square, tileObject)

    local isUsed = false;

    if tileObject:getSprite():getName() == YourCustomFilePlaceholder.placeholder_name then

        -- Your code to place your custom item goes here, use [square] to place it
        isUsed = true;

    end

    return isUsed;

end

table.insert(SpawnFromPlaceholder.placeholders, { name = "YourCustomFilePlaceholder", indexModifier = 0 });
-- [ Important note concerning indexModifier ]
-- indexModifier value depends on how much you have changed the number of items of the squere
-- If you just replaced the pleholder by an other object the value you need to set is 0.
-- But if you removed the placeholder without adding an object to replace it (example: spawn items on the floor, trigger a sound, ...) you need to set it at -1.
-- In the same way, if you removed the placeholder and add 3 objects to the square, you will want to set it at +2.

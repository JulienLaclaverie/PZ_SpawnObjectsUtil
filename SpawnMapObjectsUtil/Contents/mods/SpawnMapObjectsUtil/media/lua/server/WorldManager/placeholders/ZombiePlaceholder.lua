ZombiePlaceholder = {

    zombiesToSpawn = nil,
    oneZombiePlaceholder = "REPLACE_TILENAME_HERE_XX_YY",
    fiveZombiesPlaceholder = "REPLACE_TILENAME_HERE_XX_YY",
    tenZombiesPlaceholder = "REPLACE_TILENAME_HERE_XX_YY",
    twentyZombiesPlaceholder = "REPLACE_TILENAME_HERE_XX_YY"

};

ZombiePlaceholder.match = function(tileObject)
    ZombiePlaceholder.zombiesToSpawn = nil;

    if tileObject:getSprite():getName() == ZombiePlaceholder.oneZombiePlaceholder then
        ZombiePlaceholder.zombiesToSpawn = 1;
    end

    if tileObject:getSprite():getName() == ZombiePlaceholder.fiveZombiesPlaceholder then
        ZombiePlaceholder.zombiesToSpawn = 5;
    end

    if tileObject:getSprite():getName() == ZombiePlaceholder.tenZombiesPlaceholder then
        ZombiePlaceholder.zombiesToSpawn = 10;
    end

    if tileObject:getSprite():getName() == ZombiePlaceholder.twentyZombiesPlaceholder then
        ZombiePlaceholder.zombiesToSpawn = 20;
    end

    return ZombiePlaceholder.zombiesToSpawn ~= nil;
end

ZombiePlaceholder.replace = function(square, tileObject)
    if ZombiePlaceholder.match(tileObject) then
        local coords = { x = square:getX(), y = square:getY(), z = square:getZ() };
        spawnHorde(coords.x, coords.y, coords.x, coords.y, coords.z, ZombiePlaceholder.zombiesToSpawn);
        -- Remove the placeholder
        square:transmitRemoveItemFromSquare(tileObject);
        square:RemoveTileObject(tileObject);
    end
end
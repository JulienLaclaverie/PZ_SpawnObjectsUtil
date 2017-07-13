----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

ZombiePlaceholder = {

    zombiesToSpawn = nil,

    oneZombie =          "placeholder_zombies_01_0",
    fiveZombies =        "placeholder_zombies_01_1",
    tenZombies =         "placeholder_zombies_01_2",
    twentyZombies =      "placeholder_zombies_01_3",
    fiftyZombies =       "placeholder_zombies_01_5",
    hundredZombies =     "placeholder_zombies_01_6",
    twoHundredZombies =  "placeholder_zombies_01_7",

    zeroOrOneRandomZombie =            "placeholder_zombies_01_8",
    oneOrFiveRandomZombies =           "placeholder_zombies_01_9",
    fiveOrTenRandomZombies =           "placeholder_zombies_01_10",
    tenOrTwentyRandomZombies =         "placeholder_zombies_01_11",
    twentyOrFiftyRandomZombies =       "placeholder_zombies_01_13",
    fiftyOrHundredRandomZombies =      "placeholder_zombies_01_14",
    hundredOrTwoHundredRandomZombies = "placeholder_zombies_01_15"

};

ZombiePlaceholder.match = function(tileObject)
    ZombiePlaceholder.zombiesToSpawn = nil;
    if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_zombies_01") then

        if not tileObject:getSprite():getName() then
            return false;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.oneZombie then
            ZombiePlaceholder.zombiesToSpawn = 1;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.fiveZombies then
            ZombiePlaceholder.zombiesToSpawn = 5;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.tenZombies then
            ZombiePlaceholder.zombiesToSpawn = 10;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.twentyZombies then
            ZombiePlaceholder.zombiesToSpawn = 20;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.fiftyZombies then
            ZombiePlaceholder.zombiesToSpawn = 50;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.hundredZombies then
            ZombiePlaceholder.zombiesToSpawn = 100;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.twoHundredZombies then
            ZombiePlaceholder.zombiesToSpawn = 200;
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.zeroOrOneRandomZombie then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(0,2);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.oneOrFiveRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(1,6);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.fiveOrTenRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(5,11);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.tenOrTwentyRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(10,21);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.twentyOrFiftyRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(20,51);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.fiftyOrHundredRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(50,101);
        end

        if tileObject:getSprite():getName() == ZombiePlaceholder.hundredOrTwoHundredRandomZombies then
            ZombiePlaceholder.zombiesToSpawn = ZombRand(100,201);
        end

    end
    return ZombiePlaceholder.zombiesToSpawn ~= nil;
end

ZombiePlaceholder.replace = function(square, tileObject)

    local isUsed = false;
    if ZombiePlaceholder.match(tileObject) then
        local coords = { x = square:getX(), y = square:getY(), z = square:getZ() };
        spawnHorde(coords.x, coords.y, coords.x, coords.y, coords.z, ZombiePlaceholder.zombiesToSpawn);
        isUsed = true;
    end

    return isUsed;
end

SpawnFromPlaceholder.Add({ name = "ZombiePlaceholder", indexModifier = -1 });
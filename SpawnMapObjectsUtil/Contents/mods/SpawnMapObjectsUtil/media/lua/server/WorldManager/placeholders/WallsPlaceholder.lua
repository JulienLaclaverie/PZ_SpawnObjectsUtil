
WallsPlaceholder = {

    wooden_frame_west = "placeholder_carpentry_02_100",
    wooden_frame_north = "placeholder_carpentry_02_101",
    wooden_frame_corner = "placeholder_carpentry_02_102",
    wooden_frame_pillar = "placeholder_carpentry_02_103",

    wooden_log_west = "placeholder_carpentry_02_80",
    wooden_log_north = "placeholder_carpentry_02_81",
    wooden_log_corner = "placeholder_carpentry_02_82",
    wooden_log_pillar = "placeholder_carpentry_02_83",

    wooden_wall_west_1 = "placeholder_walls_wooden_01_20",
    wooden_wall_north_1 = "placeholder_walls_wooden_01_21",
    wooden_wall_corner_1 = "placeholder_walls_wooden_01_22",
    wooden_wall_pillar_1 = "placeholder_walls_wooden_01_23",
    wooden_window_frame_west_1 = "placeholder_walls_wooden_01_28",
    wooden_window_frame_north_1 = "placeholder_walls_wooden_01_29",
    wooden_door_frame_west_1 = "placeholder_walls_wooden_01_30",
    wooden_door_frame_north_1 = "placeholder_walls_wooden_01_31",

    wooden_wall_west_2 = "placeholder_walls_wooden_01_16",
    wooden_wall_north_2 = "placeholder_walls_wooden_01_17",
    wooden_wall_corner_2 = "placeholder_walls_wooden_01_18",
    wooden_wall_pillar_2 = "placeholder_walls_wooden_01_19",
    wooden_window_frame_west_2 = "placeholder_walls_wooden_01_24",
    wooden_window_frame_north_2 = "placeholder_walls_wooden_01_25",
    wooden_door_frame_west_2 = "placeholder_walls_wooden_01_26",
    wooden_door_frame_north_2 = "placeholder_walls_wooden_01_27",

    wooden_wall_west_3 = "placeholder_walls_wooden_01_0",
    wooden_wall_north_3 = "placeholder_walls_wooden_01_1",
    wooden_wall_corner_3 = "placeholder_walls_wooden_01_2",
    wooden_wall_pillar_3 = "placeholder_walls_wooden_01_3",
    wooden_window_frame_west_3 = "placeholder_walls_wooden_01_8",
    wooden_window_frame_north_3 = "placeholder_walls_wooden_01_9",
    wooden_door_frame_west_3 = "placeholder_walls_wooden_01_10",
    wooden_door_frame_north_3 = "placeholder_walls_wooden_01_11",

    wooden_fence_west_1 = "placeholder_walls_wooden_01_40",
    wooden_fence_north_1 = "placeholder_walls_wooden_01_41",
    wooden_fence_corner_1 = "placeholder_walls_wooden_01_42",
    wooden_fence_pillar_1 = "placeholder_walls_wooden_01_43",

    wooden_fence_west_2 = "placeholder_walls_wooden_01_44",
    wooden_fence_north_2 = "placeholder_walls_wooden_01_45",
    wooden_fence_corner_2 = "placeholder_walls_wooden_01_46",
    wooden_fence_pillar_2 = "placeholder_walls_wooden_01_47",

    wooden_fence_west_3 = "placeholder_walls_wooden_01_48",
    wooden_fence_north_3 = "placeholder_walls_wooden_01_49",
    wooden_fence_corner_3 = "placeholder_walls_wooden_01_50",
    wooden_fence_pillar_3 = "placeholder_walls_wooden_01_51",

};

WallsPlaceholder.replace = function(square, tileObject)

    local isUsed = false;
    local randomContent = ZombRand(0,100)+1;
	player = getPlayer():getPlayerNum();
	WallsPlaceholder.InitializeWallTypes(player);

    -------------
	-- PILLARS --
    -------------
    if (tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_pillar)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_1)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_2)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_3) then

    	sprite = { sprite = "walls_exterior_wooden_01_27", northSprite = "walls_exterior_wooden_01_27", corner = nil };
	    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallPillar, true, sprite);
        isUsed = true;

    end

    -----------------------
    -- WOODEN WALL FRAME --
    -----------------------
    sprite = { sprite = "carpentry_02_100", northSprite = "carpentry_02_101", corner = nil };

	-- wooden_frame_north 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_north then

	    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, true, sprite);
        isUsed = true;

    end

	-- wooden_frame_west 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_west then

    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, false, sprite);
        isUsed = true;

    end

	-- wooden_frame_corner 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_corner then

    	sprite = { sprite = "carpentry_02_102", northSprite = "carpentry_02_102", corner = true };
    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, true, sprite);
        isUsed = true;

    end

    ---------------------
    -- WOODEN LOG WALL --
    ---------------------
    sprite = { sprite = "carpentry_02_80", northSprite = "carpentry_02_81", corner = nil };
	if randomContent <= 33 then
	    WallsPlaceholder.WoodenLogWall.modData["need:Base.RippedSheets"] = "4";
	elseif randomContent <= 66 then
	    WallsPlaceholder.WoodenLogWall.modData["need:Base.Twine"] = "4";
	else
	    WallsPlaceholder.WoodenLogWall.modData["need:Base.Rope"] = "2";
	end

	-- wooden_log_north 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_north then

	    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, true, sprite);
        isUsed = true;

    end

	-- wooden_log_west 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_west then

    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, false, sprite);
        isUsed = true;

    end

	-- wooden_log_corner 
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_corner then

		sprite = { sprite = "carpentry_02_82", northSprite = "carpentry_02_82", corner = true };
    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, true, sprite);
        isUsed = true;

    end

	-- wooden_log_pillar
	sprite = { sprite = "carpentry_02_83", northSprite = "carpentry_02_83", corner = nil };
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_pillar then

    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogPillar, true, sprite);
        isUsed = true;

    end

    ------------------
    -- WOODEN WALLS --
    ------------------

    -- Level 1 - Wooden Wall
	sprite_wall = { sprite = "walls_exterior_wooden_01_44", northSprite = "walls_exterior_wooden_01_45", corner = nil };
	sprite_corner = { sprite = "walls_exterior_wooden_01_46", northSprite = "walls_exterior_wooden_01_46", corner = true };
	sprite_window_frame = { sprite = "walls_exterior_wooden_01_52", northSprite = "walls_exterior_wooden_01_53", corner = nil };
	sprite_door_frame = { sprite = "walls_exterior_wooden_01_54", northSprite = "walls_exterior_wooden_01_55", corner = nil };

    -- wooden_wall_west_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 1, false, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_north_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 1, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_corner_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_corner, 1, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_corner);
        isUsed = true;

    end

    -- wooden_window_frame_west_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 1, true, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_window_frame_north_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 1, true, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_door_frame_west_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 1, false, true, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame);
        isUsed = true;

    end

    -- wooden_door_frame_north_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_1 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 1, false, true, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame);
        isUsed = true;

    end

    -- Level 2 - Wooden Wall
	sprite_wall = { sprite = "walls_exterior_wooden_01_40", northSprite = "walls_exterior_wooden_01_41", corner = nil };
	sprite_corner = { sprite = "walls_exterior_wooden_01_42", northSprite = "walls_exterior_wooden_01_42", corner = true };
	sprite_window_frame = { sprite = "walls_exterior_wooden_01_48", northSprite = "walls_exterior_wooden_01_49", corner = nil };
	sprite_door_frame = { sprite = "walls_exterior_wooden_01_50", northSprite = "walls_exterior_wooden_01_51", corner = nil };

    -- wooden_wall_west_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 2, false, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_north_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 2, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_corner_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_corner, 2, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_corner);
        isUsed = true;

    end

    -- wooden_window_frame_west_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 2, true, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_window_frame_north_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 2, true, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_door_frame_west_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 2, false, true, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame);
        isUsed = true;

    end

    -- wooden_door_frame_north_2
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_2 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 2, false, true, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame);
        isUsed = true;

    end

    -- Level 3 - Wooden Wall
	sprite_wall = { sprite = "walls_exterior_wooden_01_24", northSprite = "walls_exterior_wooden_01_25", corner = nil };
	sprite_corner = { sprite = "walls_exterior_wooden_01_26", northSprite = "walls_exterior_wooden_01_26", corner = true };
	sprite_window_frame = { sprite = "walls_exterior_wooden_01_32", northSprite = "walls_exterior_wooden_01_33", corner = nil };
	sprite_door_frame = { sprite = "walls_exterior_wooden_01_34", northSprite = "walls_exterior_wooden_01_35", corner = nil };

    -- wooden_wall_west_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 3, false, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_north_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_wall, 3, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_wall);
        isUsed = true;

    end

    -- wooden_wall_corner_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_corner, 3, false, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_corner);
        isUsed = true;

    end

    -- wooden_window_frame_west_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 3, true, false, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_window_frame_north_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_window_frame, 3, true, false, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame);
        isUsed = true;

    end

    -- wooden_door_frame_west_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 3, false, true, player);
	    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame);
        isUsed = true;

    end

    -- wooden_door_frame_north_3
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_3 then

    	wall = WallsPlaceholder.InitializeWoodenWall(sprite_door_frame, 3, false, true, player);
	    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame);
        isUsed = true;

    end

	--[[ Work in progress
    -------------------
    -- WOODEN FENCES --
    -------------------

    -- Level 1 - Wooden fence
	sprite_fence = { sprite = "carpentry_02_40", northSprite = "carpentry_02_41", corner = nil };
	sprite_corner = { sprite = "carpentry_02_42", northSprite = "carpentry_02_42", corner = true };
	sprite_stake = { sprite = "carpentry_02_43", northSprite = "carpentry_02_43", corner = nil };

    -- wooden_fence_west_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_west_1 then

    	fence = WallsPlaceholder.InitializeWoodenFence(sprite_fence, 1, false, player);
	    WallsPlaceholder.addwall(square, fence, false, sprite_fence);
        isUsed = true;

    end

    -- wooden_fence_north_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_north_1 then

    	fence = WallsPlaceholder.InitializeWoodenFence(sprite_fence, 1, false, player);
	    WallsPlaceholder.addwall(square, fence, true, sprite_fence);
        isUsed = true;

    end

    -- wooden_fence_corner_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_corner_1 then

    	fence = WallsPlaceholder.InitializeWoodenFence(sprite_corner, 1, false, player);
	    WallsPlaceholder.addwall(square, fence, true, sprite_corner);
        isUsed = true;

    end

    -- wooden_fence_pillar_1
    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_pillar_1 then

    	fence = WallsPlaceholder.InitializeWoodenFence(sprite_stake, 1, false, player);
	    WallsPlaceholder.addwall(square, fence, true, sprite_stake);
        isUsed = true;

    end

    -- Level 2 - Wooden fence
	sprite_fence = { sprite = "carpentry_02_44", northSprite = "carpentry_02_45", corner = nil };
	sprite_corner = { sprite = "carpentry_02_46", northSprite = "carpentry_02_46", corner = true };
	sprite_stake = { sprite = "carpentry_02_47", northSprite = "carpentry_02_47", corner = nil };

    -- Level 3 - Wooden fence
	sprite_fence = { sprite = "carpentry_02_48", northSprite = "carpentry_02_49", corner = nil };
	sprite_corner = { sprite = "carpentry_02_50", northSprite = "carpentry_02_50", corner = true };
	sprite_stake = { sprite = "carpentry_02_51", northSprite = "carpentry_02_51", corner = nil };
	]]--


    return isUsed;

end

WallsPlaceholder.addwall = function(square, wall, isNorth, sprite)

	spriteToUse = sprite.sprite;
	if isNorth == true then
		spriteToUse = sprite.northSprite;
	end

	-- Place the wall without removing the player items
    if ISBuildMenu.cheat == true then
	    wall:create(square:getX(), square:getY(), square:getZ(), isNorth, spriteToUse);
    else
		ISBuildMenu.cheat = true;
	    wall:create(square:getX(), square:getY(), square:getZ(), isNorth, spriteToUse);
		ISBuildMenu.cheat = false;
    end

    -- Post wall creation actions 
    square:RecalcAllWithNeighbours(true);
	if isServer() then
		javaObject:transmitCompleteItemToClients();
	end

end

WallsPlaceholder.InitializeWallTypes = function(player)

	sprite = ISBuildMenu.getWoodenWallFrameSprites(player);
	WallsPlaceholder.WoodenWallFrame = ISWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
    WallsPlaceholder.WoodenWallFrame.canBarricade = false;
    WallsPlaceholder.WoodenWallFrame.name = "WoodenWallFrame";
    WallsPlaceholder.WoodenWallFrame.modData["xp:Woodwork"] = 0;
    WallsPlaceholder.WoodenWallFrame.modData["need:Base.Plank"] = "2";
    WallsPlaceholder.WoodenWallFrame.modData["need:Base.Nails"] = "2";
    WallsPlaceholder.WoodenWallFrame.health = 50;
    WallsPlaceholder.WoodenWallFrame.player = player;

    WallsPlaceholder.WoodenWallPillar = ISWoodenWall:new("walls_exterior_wooden_01_27", "walls_exterior_wooden_01_27", nil);
	WallsPlaceholder.WoodenWallPillar.modData["need:Base.Plank"] = "2";
	WallsPlaceholder.WoodenWallPillar.modData["need:Base.Nails"] = "3";
    WallsPlaceholder.WoodenWallPillar.modData["xp:Woodwork"] = 0;
	WallsPlaceholder.WoodenWallPillar.canPassThrough = true;
	WallsPlaceholder.WoodenWallPillar.canBarricade = false;
    WallsPlaceholder.WoodenWallPillar.player = player;
    WallsPlaceholder.WoodenWallPillar.health = 55;
    WallsPlaceholder.WoodenWallPillar.name = "Wooden Pillar";

    WallsPlaceholder.WoodenLogWall = ISWoodenWall:new("carpentry_02_80", "carpentry_02_81", nil);
    WallsPlaceholder.WoodenLogWall.modData["need:Base.Log"] = "4";
    WallsPlaceholder.WoodenLogWall.modData["need:Base.Rope"] = "2";
    WallsPlaceholder.WoodenLogWall.modData["xp:Woodwork"] = 0;
    WallsPlaceholder.WoodenLogWall.player = player;
	WallsPlaceholder.WoodenLogWall.noNeedHammer = true;
	WallsPlaceholder.WoodenLogWall.canBarricade = false;
    WallsPlaceholder.WoodenLogWall.health = 500;
	WallsPlaceholder.WoodenLogWall.name = "Log Wall";

    WallsPlaceholder.WoodenLogPillar = ISWoodenWall:new("carpentry_02_83", "carpentry_02_83", nil);
    WallsPlaceholder.WoodenLogPillar.modData["need:Base.Log"] = "4";
    WallsPlaceholder.WoodenLogPillar.modData["need:Base.Rope"] = "2";
    WallsPlaceholder.WoodenLogPillar.modData["xp:Woodwork"] = 0;
	WallsPlaceholder.WoodenLogPillar.canPassThrough = true;
    WallsPlaceholder.WoodenLogPillar.player = player;
	WallsPlaceholder.WoodenLogPillar.noNeedHammer = true;
	WallsPlaceholder.WoodenLogPillar.canBarricade = false;
    WallsPlaceholder.WoodenLogPillar.health = 500;
	WallsPlaceholder.WoodenLogPillar.name = "Log Pillar";


end

WallsPlaceholder.InitializeWoodenWall = function(sprite, level, isWindowFrame, isDoorFrame, player)

	if (isDoorFrame == true) then
		wall = ISWoodenDoorFrame:new(sprite.sprite, sprite.northSprite, sprite.corner);
	    wall.modData["wallType"] = "doorframe";
		wall.modData["need:Base.Plank"] = "4";
		wall.modData["need:Base.Nails"] = "4";
	elseif (isWindowFrame == true) then
		wall = ISWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
    	wall.modData["wallType"] = "windowsframe";
		wall.name = "Window Frame";
		wall.hoppable = true;
		wall.isThumpable = false;
		wall.modData["need:Base.Plank"] = "4";
		wall.modData["need:Base.Nails"] = "4";
	else
		wall = ISWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
   		wall.modData["wallType"] = "wall";
		wall.modData["need:Base.Plank"] = "3";
		wall.modData["need:Base.Nails"] = "3";
	end
	wall.player = player;
	wall.canBarricade = false;
    wall.modData["xp:Woodwork"] = 0;

    if level == 1 then
    	wall.health = 300;
    elseif level == 2 then
    	wall.health = 500;
    else
    	wall.health = 800;
		wall.canBePlastered = true;
    end

	return wall;

end

WallsPlaceholder.InitializeWoodenFence = function(sprite, level, isStake, player)

	local fence = ISWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
	fence.canBarricade = false;
	fence.modData["xp:Woodwork"] = 0;
	fence.player = player;
	if isStake == ture then
		fence.canPassThrough = true;
		fence.canBeAlwaysPlaced = true;
		fence.modData["need:Base.Plank"] = "1";
		fence.modData["need:Base.Nails"] = "2";
		fence.name = "Wooden Stake";
	else
		fence.hoppable = true;
		fence.isThumpable = false;
		fence.modData["need:Base.Plank"] = "2";
		fence.modData["need:Base.Nails"] = "3";
		fence.name = "Wooden Fence";
	end

    if level == 1 then
    	wall.health = 50;
    elseif level == 2 then
    	wall.health = 100;
    else
    	wall.health = 200;
    end

	return fence;

end

SpawnFromPlaceholder.Add({ name = "WallsPlaceholder", indexModifier = 0 });

-- Walls health
-- Frame = 50 = 50
-- Pillars = 100 + 100 = 200
-- Walls_1 = 200 + 100 = 300
-- Walls_2 = 200 + 300 = 500
-- Walls_3 = 200 + 600 = 800
-- Logs = 400 + 100 = 500
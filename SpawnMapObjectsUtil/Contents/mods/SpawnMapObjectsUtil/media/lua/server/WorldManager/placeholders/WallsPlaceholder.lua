----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

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

    wooden_fence_west_1 = "placeholder_carpentry_02_40",
    wooden_fence_north_1 = "placeholder_carpentry_02_41",
    wooden_fence_corner_1 = "placeholder_carpentry_02_42",
    wooden_fence_pillar_1 = "placeholder_carpentry_02_43",

    wooden_fence_west_2 = "placeholder_carpentry_02_44",
    wooden_fence_north_2 = "placeholder_carpentry_02_45",
    wooden_fence_corner_2 = "placeholder_carpentry_02_46",
    wooden_fence_pillar_2 = "placeholder_carpentry_02_47",

    wooden_fence_west_3 = "placeholder_carpentry_02_48",
    wooden_fence_north_3 = "placeholder_carpentry_02_49",
    wooden_fence_corner_3 = "placeholder_carpentry_02_50",
    wooden_fence_pillar_3 = "placeholder_carpentry_02_51",

    metal_frame_west = "placeholder_constructedobjects_01_68",
    metal_frame_north = "placeholder_constructedobjects_01_69",
    metal_frame_corner = "placeholder_constructedobjects_01_70",
    metal_frame_pillar = "placeholder_constructedobjects_01_71",

    metal_wall_west_1 = "placeholder_constructedobjects_01_64",
    metal_wall_north_1 = "placeholder_constructedobjects_01_65",
    metal_wall_corner_1 = "placeholder_constructedobjects_01_66",
    metal_wall_pillar_1 = "placeholder_constructedobjects_01_67",
    metal_window_frame_west_1 = "placeholder_constructedobjects_01_72",
    metal_window_frame_north_1 = "placeholder_constructedobjects_01_73",
    metal_door_frame_west_1 = "placeholder_constructedobjects_01_74",
    metal_door_frame_north_1 = "placeholder_constructedobjects_01_75",

    metal_wall_west_2 = "placeholder_constructedobjects_01_48",
    metal_wall_north_2 = "placeholder_constructedobjects_01_49",
    metal_wall_corner_2 = "placeholder_constructedobjects_01_50",
    metal_wall_pillar_2 = "placeholder_constructedobjects_01_51",
    metal_window_frame_west_2 = "placeholder_constructedobjects_01_56",
    metal_window_frame_north_2 = "placeholder_constructedobjects_01_57",
    metal_door_frame_west_2 = "placeholder_constructedobjects_01_58",
    metal_door_frame_north_2 = "placeholder_constructedobjects_01_59",

    metal_fence_west = "placeholder_constructedobjects_01_83",
    metal_fence_north = "placeholder_constructedobjects_01_80",
    metal_fence_corner = "placeholder_constructedobjects_01_84",
    metal_fence_pillar = "placeholder_constructedobjects_01_85",

    metal_fence_bars_west = "placeholder_constructedobjects_01_62",
    metal_fence_bars_north = "placeholder_constructedobjects_01_61",
    metal_fence_bars_corner = "placeholder_constructedobjects_01_63",
    metal_fence_bars_pillar = "placeholder_constructedobjects_01_60",

    high_metal_fence_west = "placeholder_constructedobjects_01_78",
	high_metal_fence_north = "placeholder_constructedobjects_01_77",
	high_metal_fence_corner = "placeholder_constructedobjects_01_79",
	high_metal_fence_pillar = "placeholder_constructedobjects_01_76",

};

WallsPlaceholder.InitializeWallTypes = function(player)

	sprite = ISBuildMenu.getWoodenWallFrameSprites(player);
	WallsPlaceholder.WoodenWallFrame = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
    WallsPlaceholder.WoodenWallFrame.canBarricade = false;
    WallsPlaceholder.WoodenWallFrame.name = "WoodenWallFrame";
    WallsPlaceholder.WoodenWallFrame.modData["xp:Woodwork"] = 0;
    WallsPlaceholder.WoodenWallFrame.modData["need:Base.Plank"] = "2";
    WallsPlaceholder.WoodenWallFrame.modData["need:Base.Nails"] = "2";
    WallsPlaceholder.WoodenWallFrame.health = 50;
    WallsPlaceholder.WoodenWallFrame.player = player;

    WallsPlaceholder.WoodenWallPillar = SMOUWoodenWall:new("walls_exterior_wooden_01_27", "walls_exterior_wooden_01_27", nil);
	WallsPlaceholder.WoodenWallPillar.modData["need:Base.Plank"] = "2";
	WallsPlaceholder.WoodenWallPillar.modData["need:Base.Nails"] = "3";
    WallsPlaceholder.WoodenWallPillar.modData["xp:Woodwork"] = 0;
	WallsPlaceholder.WoodenWallPillar.canPassThrough = true;
	WallsPlaceholder.WoodenWallPillar.canBarricade = false;
    WallsPlaceholder.WoodenWallPillar.player = player;
    WallsPlaceholder.WoodenWallPillar.health = 55;
    WallsPlaceholder.WoodenWallPillar.name = "Wooden Pillar";

    WallsPlaceholder.WoodenLogWall = SMOUWoodenWall:new("carpentry_02_80", "carpentry_02_81", nil);
    WallsPlaceholder.WoodenLogWall.modData["need:Base.Log"] = "4";
    WallsPlaceholder.WoodenLogWall.modData["need:Base.Rope"] = "2";
    WallsPlaceholder.WoodenLogWall.modData["xp:Woodwork"] = 0;
    WallsPlaceholder.WoodenLogWall.player = player;
	WallsPlaceholder.WoodenLogWall.noNeedHammer = true;
	WallsPlaceholder.WoodenLogWall.canBarricade = false;
    WallsPlaceholder.WoodenLogWall.health = 500;
	WallsPlaceholder.WoodenLogWall.name = "Log Wall";

    WallsPlaceholder.WoodenLogPillar = SMOUWoodenWall:new("carpentry_02_83", "carpentry_02_83", nil);
    WallsPlaceholder.WoodenLogPillar.modData["need:Base.Log"] = "4";
    WallsPlaceholder.WoodenLogPillar.modData["need:Base.Rope"] = "2";
    WallsPlaceholder.WoodenLogPillar.modData["xp:Woodwork"] = 0;
	WallsPlaceholder.WoodenLogPillar.canPassThrough = true;
    WallsPlaceholder.WoodenLogPillar.player = player;
	WallsPlaceholder.WoodenLogPillar.noNeedHammer = true;
	WallsPlaceholder.WoodenLogPillar.canBarricade = false;
    WallsPlaceholder.WoodenLogPillar.health = 500;
	WallsPlaceholder.WoodenLogPillar.name = "Log Pillar";

	WallsPlaceholder.MetalWallFrame = SMOUWoodenWall:new("constructedobjects_01_68","constructedobjects_01_69", nil);
    WallsPlaceholder.MetalWallFrame.canBarricade = false;
    WallsPlaceholder.MetalWallFrame.health = 120;
    WallsPlaceholder.MetalWallFrame.name = "MetalWallFrame";
    WallsPlaceholder.MetalWallFrame.modData["xp:MetalWelding"] = 0;
    WallsPlaceholder.MetalWallFrame.modData["need:Base.MetalBar"]= "3";
    WallsPlaceholder.MetalWallFrame.player = player;

    WallsPlaceholder.MetalWallPillar = SMOUWoodenWall:new("constructedobjects_01_71", "constructedobjects_01_71", nil);
    WallsPlaceholder.MetalWallPillar.modData["need:Base.MetalBar"]= "3";
    WallsPlaceholder.MetalWallPillar.modData["xp:MetalWelding"] = 0;
	WallsPlaceholder.MetalWallPillar.canPassThrough = true;
	WallsPlaceholder.MetalWallPillar.canBarricade = false;
    WallsPlaceholder.MetalWallPillar.player = player;
    WallsPlaceholder.MetalWallPillar.health = 120;
    WallsPlaceholder.WoodenWallPillar.name = "Metal Pillar";

end

WallsPlaceholder.replace = function(square, tileObject, layer)

	if not layer then
		print("LAYER", tostring(layer));
	end

    local isUsed = false;
    local randomContent = ZombRand(0,100)+1;
	local wall;
	local sprite;

	if getPlayer() == nil then
		return false;
	end
	local player = getPlayer():getPlayerNum();
	WallsPlaceholder.InitializeWallTypes(player);

    ------------------
	-- WOOD PILLARS --
    ------------------
    if (tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_pillar)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_1)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_2)
    or (tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_pillar_3) then
    	sprite = { sprite = "walls_exterior_wooden_01_27", northSprite = "walls_exterior_wooden_01_27", corner = nil };
	    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallPillar, true, sprite, layer);
        isUsed = true;
    end

	-- Better performance by reducing the number of ifs used
    if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_walls_wooden_") then
    	------------------
	    -- WOODEN WALLS --
	    ------------------

	    -- Level 1 - Wooden Wall
		local sprite_wall = { sprite = "walls_exterior_wooden_01_44", northSprite = "walls_exterior_wooden_01_45", corner = nil };
		local sprite_corner = { sprite = "walls_exterior_wooden_01_46", northSprite = "walls_exterior_wooden_01_46", corner = true };
		local sprite_window_frame = { sprite = "walls_exterior_wooden_01_52", northSprite = "walls_exterior_wooden_01_53", corner = nil };
		local sprite_door_frame = { sprite = "walls_exterior_wooden_01_54", northSprite = "walls_exterior_wooden_01_55", corner = nil };

	    -- wooden_wall_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_corner_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_window_frame_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 1, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_window_frame_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 1, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_door_frame_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 1, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- wooden_door_frame_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 1, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- Level 2 - Wooden Wall
		local sprite_wall = { sprite = "walls_exterior_wooden_01_40", northSprite = "walls_exterior_wooden_01_41", corner = nil };
		local sprite_corner = { sprite = "walls_exterior_wooden_01_42", northSprite = "walls_exterior_wooden_01_42", corner = true };
		local sprite_window_frame = { sprite = "walls_exterior_wooden_01_48", northSprite = "walls_exterior_wooden_01_49", corner = nil };
		local sprite_door_frame = { sprite = "walls_exterior_wooden_01_50", northSprite = "walls_exterior_wooden_01_51", corner = nil };

	    -- wooden_wall_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 2, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 2, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_corner_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 2, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_window_frame_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 2, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_window_frame_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 2, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_door_frame_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 2, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- wooden_door_frame_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 2, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- Level 3 - Wooden Wall
		local sprite_wall = { sprite = "walls_exterior_wooden_01_24", northSprite = "walls_exterior_wooden_01_25", corner = nil };
		local sprite_corner = { sprite = "walls_exterior_wooden_01_26", northSprite = "walls_exterior_wooden_01_26", corner = true };
		local sprite_window_frame = { sprite = "walls_exterior_wooden_01_32", northSprite = "walls_exterior_wooden_01_33", corner = nil };
		local sprite_door_frame = { sprite = "walls_exterior_wooden_01_34", northSprite = "walls_exterior_wooden_01_35", corner = nil };

	    -- wooden_wall_west_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_west_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 3, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_north_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_north_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 3, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_corner_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_wall_corner_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 3, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_window_frame_west_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_west_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 3, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_window_frame_north_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_window_frame_north_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 3, true, false, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_door_frame_west_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_west_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 3, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- wooden_door_frame_north_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_door_frame_north_3 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 3, false, true, false, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame, layer);
	        isUsed = true;

	    end

    elseif luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_carpentry_") then
	    -----------------------
	    -- WOODEN WALL FRAME --
	    -----------------------
	    sprite = { sprite = "carpentry_02_100", northSprite = "carpentry_02_101", corner = nil };

		-- wooden_frame_north
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_north then

		    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, true, sprite, layer);
	        isUsed = true;

	    end

		-- wooden_frame_west
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_west then

	    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, false, sprite, layer);
	        isUsed = true;

	    end

		-- wooden_frame_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_frame_corner then

	    	sprite = { sprite = "carpentry_02_102", northSprite = "carpentry_02_102", corner = true };
	    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenWallFrame, true, sprite, layer);
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

		    WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, true, sprite, layer);
	        isUsed = true;

	    end

		-- wooden_log_west
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_west then

	    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, false, sprite, layer);
	        isUsed = true;

	    end

		-- wooden_log_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_corner then

			sprite = { sprite = "carpentry_02_82", northSprite = "carpentry_02_82", corner = true };
	    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogWall, true, sprite, layer);
	        isUsed = true;

	    end

		-- wooden_log_pillar
		sprite = { sprite = "carpentry_02_83", northSprite = "carpentry_02_83", corner = nil };
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_log_pillar then

	    	WallsPlaceholder.addwall(square, WallsPlaceholder.WoodenLogPillar, true, sprite, layer);
	        isUsed = true;

	    end

	    -------------------
	    -- WOODEN FENCES --
	    -------------------

	    -- Level 1 - Wooden fence
		local sprite_fence = { sprite = "carpentry_02_40", northSprite = "carpentry_02_41", corner = nil };
		local sprite_corner = { sprite = "carpentry_02_42", northSprite = "carpentry_02_42", corner = true };
		local sprite_stake = { sprite = "carpentry_02_43", northSprite = "carpentry_02_43", corner = nil };
		local fence;

	    -- wooden_fence_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_west_1 then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, fence, false, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_north_1 then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_corner_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_corner_1 then

	    	fence = WallsPlaceholder.InitializeFence(sprite_corner, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_pillar_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_pillar_1 then

	    	fence = WallsPlaceholder.InitializeFence(sprite_stake, 1, true, false, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_stake, layer);
	        isUsed = true;

	    end

	    -- Level 2 - Wooden fence
		sprite_fence = { sprite = "carpentry_02_44", northSprite = "carpentry_02_45", corner = nil };
		sprite_corner = { sprite = "carpentry_02_46", northSprite = "carpentry_02_46", corner = true };
		sprite_stake = { sprite = "carpentry_02_47", northSprite = "carpentry_02_47", corner = nil };

	    -- wooden_fence_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_west_2 then

	        fence = WallsPlaceholder.InitializeFence(sprite_fence, 2, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, false, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_north_2 then

	        fence = WallsPlaceholder.InitializeFence(sprite_fence, 2, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_corner_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_corner_2 then

	        fence = WallsPlaceholder.InitializeFence(sprite_corner, 2, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_pillar_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_pillar_2 then

	        fence = WallsPlaceholder.InitializeFence(sprite_stake, 2, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_stake, layer);
	        isUsed = true;

	    end

	    -- Level 3 - Wooden fence
		sprite_fence = { sprite = "carpentry_02_48", northSprite = "carpentry_02_49", corner = nil };
		sprite_corner = { sprite = "carpentry_02_50", northSprite = "carpentry_02_50", corner = true };
		sprite_stake = { sprite = "carpentry_02_51", northSprite = "carpentry_02_51", corner = nil };

	    -- wooden_fence_west_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_west_3 then

	        fence = WallsPlaceholder.InitializeFence(sprite_fence, 3, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, false, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_north_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_north_3 then

	        fence = WallsPlaceholder.InitializeFence(sprite_fence, 3, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_corner_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_corner_3 then

	        fence = WallsPlaceholder.InitializeFence(sprite_corner, 3, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_fence_pillar_3
	    if tileObject:getSprite():getName() == WallsPlaceholder.wooden_fence_pillar_3 then

	        fence = WallsPlaceholder.InitializeFence(sprite_stake, 3, false, false, false, player);
	        WallsPlaceholder.addwall(square, fence, true, sprite_stake, layer);
	        isUsed = true;

	    end

    elseif luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_constructedobjects_") then
	    -------------------
		-- METAL PILLARS --
	    -------------------
	    if (tileObject:getSprite():getName() == WallsPlaceholder.metal_frame_pillar)
	    or (tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_pillar_1)
	    or (tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_pillar_2) then

	    	sprite = { sprite = "constructedobjects_01_71", northSprite = "constructedobjects_01_71", corner = nil };
		    WallsPlaceholder.addwall(square, WallsPlaceholder.MetalWallPillar, true, sprite, layer);
	        isUsed = true;

	    end

	    ----------------------
	    -- METAL WALL FRAME --
	    ----------------------
	    sprite = { sprite = "constructedobjects_01_68", northSprite = "constructedobjects_01_69", corner = nil };

		-- metal_frame_north
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_frame_north then

		    WallsPlaceholder.addwall(square, WallsPlaceholder.MetalWallFrame, true, sprite, layer);
	        isUsed = true;

	    end

		-- metal_frame_west
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_frame_west then

	    	WallsPlaceholder.addwall(square, WallsPlaceholder.MetalWallFrame, false, sprite, layer);
	        isUsed = true;

	    end

		-- metal_frame_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_frame_corner then

	    	sprite = { sprite = "constructedobjects_01_70", northSprite = "constructedobjects_01_70", corner = true };
	    	WallsPlaceholder.addwall(square, WallsPlaceholder.MetalWallFrame, true, sprite, layer);
	        isUsed = true;

	    end

	    ------------------
	    -- METAL WALLS --
	    ------------------

	    -- Level 1 - Metal Wall
		local sprite_wall = { sprite = "constructedobjects_01_64", northSprite = "constructedobjects_01_65", corner = nil };
		local sprite_corner = { sprite = "constructedobjects_01_66", northSprite = "constructedobjects_01_66", corner = true };
		local sprite_window_frame = { sprite = "constructedobjects_01_72", northSprite = "constructedobjects_01_73", corner = nil };
		local sprite_door_frame = { sprite = "constructedobjects_01_74", northSprite = "constructedobjects_01_75", corner = nil };

	    -- wooden_wall_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_corner_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_corner_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 1, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_window_frame_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_window_frame_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 1, true, false, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_window_frame_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_window_frame_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 1, true, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_door_frame_west_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_door_frame_west_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 1, false, true, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- wooden_door_frame_north_1
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_door_frame_north_1 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 1, false, true, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- Level 2 - Metal Wall
		sprite_wall = { sprite = "constructedobjects_01_48", northSprite = "constructedobjects_01_49", corner = nil };
		sprite_corner = { sprite = "constructedobjects_01_50", northSprite = "constructedobjects_01_50", corner = true };
		sprite_window_frame = { sprite = "constructedobjects_01_56", northSprite = "constructedobjects_01_57", corner = nil };
		sprite_door_frame = { sprite = "constructedobjects_01_58", northSprite = "constructedobjects_01_59", corner = nil };

	    -- wooden_wall_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 2, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 2, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- wooden_wall_corner_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_wall_corner_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 2, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- wooden_window_frame_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_window_frame_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 2, true, false, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_window_frame_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_window_frame_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_window_frame, 2, true, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_window_frame, layer);
            WallsPlaceholder.ReorganizeLayers(square);
	        isUsed = true;

	    end

	    -- wooden_door_frame_west_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_door_frame_west_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 2, false, true, true, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    -- wooden_door_frame_north_2
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_door_frame_north_2 then

	    	wall = WallsPlaceholder.InitializeWall(sprite_door_frame, 2, false, true, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_door_frame, layer);
	        isUsed = true;

	    end

	    ------------------
	    -- METAL FENCES --
	    ------------------

	    -- Metal fence
		sprite_corner = { sprite = "constructedobjects_01_84", northSprite = "constructedobjects_01_84", corner = true };
		local sprite_fence = { sprite = "constructedobjects_01_83", northSprite = "constructedobjects_01_80", corner = nil };
		local sprite_stake = { sprite = "constructedobjects_01_85", northSprite = "constructedobjects_01_85", corner = nil };
		local fence;

	    -- metal_fence_west
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_west then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, true, false, player);
		    WallsPlaceholder.addwall(square, fence, false, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- metal_fence_north
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_north then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, true, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- metal_fence_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_corner then

	    	fence = WallsPlaceholder.InitializeFence(sprite_corner, 1, false, true, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- metal_fence_pillar
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_pillar then

	    	fence = WallsPlaceholder.InitializeFence(sprite_stake, 1, true, true, false, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_stake, layer);
	        isUsed = true;

	    end

	    -- Metal bar fence
		sprite_fence = { sprite = "constructedobjects_01_62", northSprite = "constructedobjects_01_61", corner = nil };
		sprite_corner = { sprite = "constructedobjects_01_63", northSprite = "constructedobjects_01_63", corner = true };
		sprite_stake = { sprite = "constructedobjects_01_60", northSprite = "constructedobjects_01_60", corner = nil };

	    -- metal_fence_bars_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_bars_west then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, true, true, player);
		    WallsPlaceholder.addwall(square, fence, false, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- metal_fence_bars_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_bars_north then

	    	fence = WallsPlaceholder.InitializeFence(sprite_fence, 1, false, true, true, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_fence, layer);
	        isUsed = true;

	    end

	    -- metal_fence_bars_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_bars_corner then

	    	fence = WallsPlaceholder.InitializeFence(sprite_corner, 1, false, true, true, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- metal_fence_bars_pillar
	    if tileObject:getSprite():getName() == WallsPlaceholder.metal_fence_bars_pillar then

	    	fence = WallsPlaceholder.InitializeFence(sprite_stake, 1, true, true, true, player);
		    WallsPlaceholder.addwall(square, fence, true, sprite_stake, layer);
	        isUsed = true;

	    end

	    -- High Metal Fences
		sprite_wall = { sprite = "constructedobjects_01_78", northSprite = "constructedobjects_01_77", corner = nil };
		sprite_corner = { sprite = "constructedobjects_01_79", northSprite = "constructedobjects_01_79", corner = true };
		local sprite_pillar = { sprite = "constructedobjects_01_76", northSprite = "constructedobjects_01_76", corner = nil };

	    -- high_metal_fence_west
	    if tileObject:getSprite():getName() == WallsPlaceholder.high_metal_fence_west then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, false, player);
		    WallsPlaceholder.addwall(square, wall, false, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- high_metal_fence_north
	    if tileObject:getSprite():getName() == WallsPlaceholder.high_metal_fence_north then

	    	wall = WallsPlaceholder.InitializeWall(sprite_wall, 1, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_wall, layer);
	        isUsed = true;

	    end

	    -- high_metal_fence_corner
	    if tileObject:getSprite():getName() == WallsPlaceholder.high_metal_fence_corner then

	    	wall = WallsPlaceholder.InitializeWall(sprite_corner, 1, false, false, true, player);
		    WallsPlaceholder.addwall(square, wall, true, sprite_corner, layer);
	        isUsed = true;

	    end

	    -- high_metal_fence_pillar
	    if tileObject:getSprite():getName() == WallsPlaceholder.high_metal_fence_pillar then

		    WallsPlaceholder.addwall(square, WallsPlaceholder.MetalWallPillar, true, sprite_pillar, layer);
	        isUsed = true;

	    end

    end

    return isUsed;

end

WallsPlaceholder.addwall = function(square, wall, isNorth, sprite, layer)

	local spriteToUse = sprite.sprite;
	if isNorth == true then
		spriteToUse = sprite.northSprite;
	end

	--[[if layer ~= nil then
		layer = layer - 1;
	end]]

	-- Place the wall without removing the player items
    if ISBuildMenu.cheat == true then
	    wall:create(square:getX(), square:getY(), square:getZ(), isNorth, spriteToUse, layer);
    else
		ISBuildMenu.cheat = true;
	    wall:create(square:getX(), square:getY(), square:getZ(), isNorth, spriteToUse, layer);
		ISBuildMenu.cheat = false;
    end

    -- Post wall creation actions
    square:RecalcAllWithNeighbours(true);
	if isServer() then
		wall:transmitCompleteItemToClients();
	end

end

WallsPlaceholder.InitializeWall = function(sprite, level, isWindowFrame, isDoorFrame, isMetal, player)
	local wall = { modData = {} };
	if (isMetal == false) then
		if (isDoorFrame == true) then
			wall = SMOUWoodenDoorFrame:new(sprite.sprite, sprite.northSprite, sprite.corner);
		    wall.modData["wallType"] = "doorframe";
			wall.modData["need:Base.Plank"] = "4";
			wall.modData["need:Base.Nails"] = "4";
		elseif (isWindowFrame == true) then
			wall = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
	    	wall.modData["wallType"] = "windowsframe";
			wall.name = "Window Frame";
			wall.isThumpable = false;
			wall.modData["need:Base.Plank"] = "4";
			wall.modData["need:Base.Nails"] = "4";
		else
			wall = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
	   		wall.modData["wallType"] = "wall";
			wall.modData["need:Base.Plank"] = "3";
			wall.modData["need:Base.Nails"] = "3";
		end
    	wall.modData["xp:Woodwork"] = 0;

	    if level == 1 then
	    	wall.health = 300;
	    elseif level == 2 then
	    	wall.health = 500;
	    else
	    	wall.health = 800;
			wall.canBePlastered = true;
	    end
	else
		if (isDoorFrame == true) then
			wall = SMOUWoodenDoorFrame:new(sprite.sprite, sprite.northSprite, sprite.corner);
	   		wall.modData["wallType"] = "doorframe";
		elseif (isWindowFrame == true) then
			wall = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
	    	wall.modData["wallType"] = "windowsframe";
			wall.name = "Window Frame";
			wall.isThumpable = false;
		else
			wall = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
		end
    	wall.modData["xp:MetalWelding"] = 0;
		wall.modData["need:Base.MetalBar"] = "4";
		wall.modData["need:Base.SheetMetal"] = "2";
		wall.modData["need:Base.SmallSheetMetal"] = "2";

	    if level == 1 then
	    	wall.health = 500;
	    else
	    	wall.health = 1000;
	    end
	end
	wall.player = player;
	wall.canBarricade = false;

	return wall;

end

WallsPlaceholder.ReorganizeLayers = function(square)
	local shiftItem;

	for i=0, square:getObjects():size()-1 do
		local object = square:getObjects():get(i);
		if instanceof(object, 'BarricadeAble') then
			shiftItem = object;
			if isClient() then square:transmitRemoveItemFromSquare(object) end
			square:RemoveTileObject(object);
			break;
		end
	end

	if shiftItem then
		square:AddSpecialObject( shiftItem, square:getObjects():size() );
		if isClient() then shiftItem:transmitCompleteItemToServer(); end
	end
end

WallsPlaceholder.InitializeFence = function(sprite, level, isStake, isMetal, isBars, player)

	local fence = SMOUWoodenWall:new(sprite.sprite, sprite.northSprite, sprite.corner);
	fence.canBarricade = false;
	fence.player = player;
	if isStake == true then
		fence.canPassThrough = true;
		fence.canBeAlwaysPlaced = true;
	else
		fence.hoppable = true;
		fence.isThumpable = false;
	end

	if (isMetal == false) then
		fence.modData["xp:Woodwork"] = 0;
		if isStake == true then
			fence.modData["need:Base.Plank"] = "1";
			fence.modData["need:Base.Nails"] = "2";
			fence.name = "Wooden Stake";
		else
			fence.modData["need:Base.Plank"] = "2";
			fence.modData["need:Base.Nails"] = "3";
			fence.name = "Wooden Fence";
		end

	    if level == 1 then
	    	fence.health = 50;
	    elseif level == 2 then
	    	fence.health = 100;
	    else
	    	fence.health = 200;
	    end
	else 
		fence.modData["xp:MetalWelding"] = 0;
	    if isBars == false then
    		fence.modData["need:Base.MetalPipe"]= "3";
	    	fence.health = 150;
	    else
			fence.modData["need:Base.SmallSheetMetal"] = "3";
	    	fence.health = 300;
	    end
	end

	return fence;

end

SpawnFromPlaceholder.Add({ name = "WallsPlaceholder" });

-- Walls health used :
-- Frame = 50 = 50
-- Pillars = 100 + 100 = 200
-- Walls_1 = 200 + 100 = 300
-- Walls_2 = 200 + 300 = 500
-- Walls_3 = 200 + 600 = 800
-- Logs = 400 + 100 = 500
-- Metal low level 500
-- Metal High level 1000
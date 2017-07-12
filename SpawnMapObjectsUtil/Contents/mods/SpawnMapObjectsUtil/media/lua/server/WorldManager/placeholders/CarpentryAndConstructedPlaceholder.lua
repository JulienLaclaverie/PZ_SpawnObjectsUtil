
CarpentryAndConstructedPlaceholder = {    

	sandbag_west = "placeholder_carpentry_02_12",
	sandbag_north = "placeholder_carpentry_02_13",

	lamp_south = "placeholder_carpentry_02_59",
	lamp_north = "placeholder_carpentry_02_60",
	lamp_west = "placeholder_carpentry_02_61",
	lamp_east = "placeholder_carpentry_02_62",

	rain_collector_small_empty = "placeholder_carpentry_02_54",
	rain_collector_small_full = "placeholder_carpentry_02_55",
	rain_collector_big_empty = "placeholder_carpentry_02_52",
	rain_collector_big_full = "placeholder_carpentry_02_53",

};

CarpentryAndConstructedPlaceholder.InitializeItems = function(player)

	CarpentryAndConstructedPlaceholder.Sandbag = ISWoodenWall:new("carpentry_02_12", "carpentry_02_13", nil);
	CarpentryAndConstructedPlaceholder.Sandbag:setEastSprite("carpentry_02_14");
	CarpentryAndConstructedPlaceholder.Sandbag:setSouthSprite("carpentry_02_15");
    CarpentryAndConstructedPlaceholder.Sandbag.hoppable = true;
    CarpentryAndConstructedPlaceholder.Sandbag.canBarricade = false;
	CarpentryAndConstructedPlaceholder.Sandbag.modData["need:Base.Sandbag"] = "3";
    CarpentryAndConstructedPlaceholder.Sandbag.modData["xp:Woodwork"] = 0;
	CarpentryAndConstructedPlaceholder.Sandbag.player = player;
	CarpentryAndConstructedPlaceholder.Sandbag.renderFloorHelper = true;
	CarpentryAndConstructedPlaceholder.Sandbag.noNeedHammer = true;
	CarpentryAndConstructedPlaceholder.Sandbag.name = "Sand Bag Wall";

    CarpentryAndConstructedPlaceholder.SmallBarrel = RainCollectorBarrel:new(player, sprite, RainCollectorBarrel.smallWaterMax);
	CarpentryAndConstructedPlaceholder.SmallBarrel.modData["need:Base.Plank"] = "4";
	CarpentryAndConstructedPlaceholder.SmallBarrel.modData["need:Base.Nails"] = "4";
    CarpentryAndConstructedPlaceholder.SmallBarrel.modData["need:Base.Garbagebag"] = "4";
    CarpentryAndConstructedPlaceholder.SmallBarrel.modData["xp:Woodwork"] = 0;
	CarpentryAndConstructedPlaceholder.SmallBarrel.player = player;

    CarpentryAndConstructedPlaceholder.BigBarrel = RainCollectorBarrel:new(player, sprite, RainCollectorBarrel.largeWaterMax);
	CarpentryAndConstructedPlaceholder.BigBarrel.modData["need:Base.Plank"] = "4";
	CarpentryAndConstructedPlaceholder.BigBarrel.modData["need:Base.Nails"] = "4";
    CarpentryAndConstructedPlaceholder.BigBarrel.modData["need:Base.Garbagebag"] = "4";
    CarpentryAndConstructedPlaceholder.BigBarrel.modData["xp:Woodwork"] = 0;
	CarpentryAndConstructedPlaceholder.BigBarrel.player = player;

end

CarpentryAndConstructedPlaceholder.replace = function(square, tileObject)

	local isUsed = false;

	if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_carpentry_02") then
		
	    local randomContent = ZombRand(0,100)+1;
		if getPlayer() == nil then
			return false;
		end
		player = getPlayer():getPlayerNum();
		CarpentryAndConstructedPlaceholder.InitializeItems(player);

	    --------------
		-- SANDBAGS --
	    --------------
	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.sandbag_west then

	    	-- West
	    	sprite = { sprite = "carpentry_02_12", northSprite = "carpentry_02_12", corner = nil };
		    WallsPlaceholder.addwall(square, CarpentryAndConstructedPlaceholder.Sandbag, false, sprite);
	        isUsed = true;

	    end

	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.sandbag_north then

	    	-- North
	    	sprite = { sprite = "carpentry_02_13", northSprite = "carpentry_02_13", corner = nil };
		    WallsPlaceholder.addwall(square, CarpentryAndConstructedPlaceholder.Sandbag, true, sprite);
	        isUsed = true;

	    end

	    ---------------------
		-- RAIN COLLECTORS --
	    ---------------------

	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.rain_collector_small_empty then

	    	CarpentryAndConstructedPlaceholder.addBarrel(square, CarpentryAndConstructedPlaceholder.SmallBarrel, false, "carpentry_02_54", false, nil);
	        isUsed = true;

	    end

	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.rain_collector_small_full then
	    	
	    	CarpentryAndConstructedPlaceholder.addBarrel(square, CarpentryAndConstructedPlaceholder.SmallBarrel, false, "carpentry_02_54", true, "carpentry_02_55");
	        isUsed = true;

	    end

	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.rain_collector_big_empty then

	    	CarpentryAndConstructedPlaceholder.addBarrel(square, CarpentryAndConstructedPlaceholder.BigBarrel, false, "carpentry_02_52", false, nil);
	        isUsed = true;

	    end

	    if tileObject:getSprite():getName() == CarpentryAndConstructedPlaceholder.rain_collector_big_full then
	    	
	    	CarpentryAndConstructedPlaceholder.addBarrel(square, CarpentryAndConstructedPlaceholder.BigBarrel, false, "carpentry_02_52", true, "carpentry_02_53");
	        isUsed = true;

	    end

	end
    
    return isUsed;

end
    
CarpentryAndConstructedPlaceholder.addBarrel = function(square, barrel, isNorth, spriteToUse, isFull, spriteFull)

    if ISBuildMenu.cheat == true then
	    barrel:create(square:getX(), square:getY(), square:getZ(), false, spriteToUse);
    else
		ISBuildMenu.cheat = true;
	    barrel:create(square:getX(), square:getY(), square:getZ(), false, spriteToUse);
		ISBuildMenu.cheat = false;
    end

	if isFull == true then
        
        for key,val in ipairs(RainCollectorBarrel.barrels) do
            if (val.x == square:getX()) and (val.y == square:getY()) and (val.z == square:getZ()) then
				val.waterAmount = val.waterMax;
				local obj = RainCollectorBarrel.findObject(square);
				if obj then
					obj:setWaterAmount(val.waterAmount);
					obj:transmitModData();
					obj:setSprite(spriteFull);
					obj:transmitUpdatedSpriteToClients();
				end
            end
        end

	end

end

SpawnFromPlaceholder.Add({ name = "CarpentryAndConstructedPlaceholder", indexModifier = 0 });
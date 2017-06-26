DroppedFoodItemsPlaceholder = {

    alcohol_1 = "placeholder_items_food_01_0",
    alcohol_2 = "placeholder_items_food_01_1",
    alcohol_3 = "placeholder_items_food_01_2",
    alcohol_3_5 = "placeholder_items_food_01_3",

    pastries_3_5 = "placeholder_items_food_01_10",
    cake_6_8 = "placeholder_items_food_01_11",
    cookie_jelly_3_5 = "placeholder_items_food_01_12",
    cupcake_1_3 = "placeholder_items_food_01_13",

    pop_1 = "placeholder_items_food_01_4",
    bottle_1 = "placeholder_items_food_01_5",
    pop_3 = "placeholder_items_food_01_15",
    pop_1_bottle_2 = "placeholder_items_food_01_6",
    pop_2_bottle_4 = "placeholder_items_food_01_7",
    chips_1_pop_2 = "placeholder_items_food_01_14",

    convinience_3_5 = "placeholder_items_food_01_8",
    convinience_1_3 = "placeholder_items_food_01_9",
    convinience_2_chips_2 = "placeholder_items_food_01_16",
    convinience_1 = "placeholder_items_food_01_17",
    chips_3 = "placeholder_items_food_01_18",
    chips_2 = "placeholder_items_food_01_19",
    chips_1 = "placeholder_items_food_01_20",

    bleach_1 = "placeholder_items_food_01_21",
    bleach_2 = "placeholder_items_food_01_22",
    bleach_3 = "placeholder_items_food_01_23"

};

DroppedFoodItemsPlaceholder.replace = function(square, tileObject)

    local randomContent = ZombRand(0,100)+1;
    local randomValue_3_5 = ZombRand(3,5)+1;
    local randomValue_1_3 = ZombRand(1,3)+1;
    local randomValue_6_8 = ZombRand(6,8)+1;

    -- Alcohol
    if tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.alcohol_1 then

        if (randomContent >= 50) then
            square:AddWorldInventoryItem("Base.Wine", 0, 0, 0);
        else
            square:AddWorldInventoryItem("Base.Wine2", 0, 0, 0);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.alcohol_2 then

        if (randomContent >= 50) then
            square:AddWorldInventoryItem("Base.Wine", 0, 0, 0);
        else
            square:AddWorldInventoryItem("Base.Wine2", 0, 0, 0);
        end
        square:AddWorldInventoryItem("Base.WhiskeyFull", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.alcohol_3 then

        square:AddWorldInventoryItem("Base.Wine", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Wine2", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WhiskeyFull", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.alcohol_3_5 then
        
        square:AddWorldInventoryItem("Base.Wine", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Wine2", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WhiskeyFull", 0, 0, 0);

        if (randomValue_3_5 >= 4) then
            if (randomContent >= 50) then
                square:AddWorldInventoryItem("Base.Wine", 0, 0, 0);
            else
                square:AddWorldInventoryItem("Base.Wine2", 0, 0, 0);
            end
        end

        if (randomValue_3_5 > 4) then
            square:AddWorldInventoryItem("Base.WhiskeyFull", 0, 0, 0);
        end

    end

    -- Pastries
    if tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.pastries_3_5 then
        
        square:AddWorldInventoryItem("Base.Cupcake", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Lollipop", 0, 0, 0);

        if (randomValue_3_5 >= 4) then
            if (randomContent >= 50) then
                square:AddWorldInventoryItem("Base.MintCandy", 0, 0, 0);
            else
                square:AddWorldInventoryItem("Base.Modjeska", 0, 0, 0);
            end
        end

        if (randomValue_3_5 > 4) then
            square:AddWorldInventoryItem("Base.Chocolate", 0, 0, 0);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.cake_6_8 then

        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);

        if (randomValue_6_8 >= 7) then
            square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        end

        if (randomValue_6_8 >= 8) then
            square:AddWorldInventoryItem("Base.CakeSlice", 0, 0, 0);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.cookie_jelly_3_5 then

        square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);
        square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);

        if (randomValue_3_5 >= 4) then
            square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);
        end

        if (randomValue_3_5 > 4) then
            square:AddWorldInventoryItem("Base.CookieJelly", 0, 0, 0);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.cupcake_1_3 then

        square:AddWorldInventoryItem("Base.Cupcake", 0, 0, 0);
        if (randomValue_1_3 >= 2) then
            square:AddWorldInventoryItem("Base.Cupcake", 0, 0, 0);
        end
        if (randomValue_1_3 > 2) then
            square:AddWorldInventoryItem("Base.Cupcake", 0, 0, 0);
        end

    end

    -- Bleach
    if tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.bleach_1 then
        
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.bleach_2 then
        
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.bleach_3 then
        
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Bleach", 0, 0, 0);

    end

    -- Drinks
    if tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.pop_1 then

        square:AddWorldInventoryItem("Base.Pop", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.bottle_1 then

        if (randomContent >= 50) then
            square:AddWorldInventoryItem("Base.WaterPopBottle", 0, 0, 0);
        else
            square:AddWorldInventoryItem("Base.WaterBottleFull", 0, 0, 0);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.pop_3 then

        square:AddWorldInventoryItem("Base.Pop", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Pop2", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Pop3", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.pop_1_bottle_2 then

        square:AddWorldInventoryItem("Base.Pop2", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterPopBottle", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterBottleFull", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.pop_2_bottle_4 then

        square:AddWorldInventoryItem("Base.Pop3", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Pop", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterPopBottle", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterPopBottle", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterBottleFull", 0, 0, 0);
        square:AddWorldInventoryItem("Base.WaterBottleFull", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.chips_1_pop_2 then

        square:AddWorldInventoryItem("Base.Pop", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Pop3", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Crisps3", 0, 0, 0);

    end

    -- Food
    if tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.convinience_3_5 then

        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);

        if (randomValue_3_5 >= 4) then
            DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        end

        if (randomValue_3_5 > 4) then
            DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.convinience_1_3 then

        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        if (randomValue_1_3 >= 2) then
            DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        end
        if (randomValue_1_3 > 2) then
            DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        end

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.convinience_2_chips_2 then

        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);
        square:AddWorldInventoryItem("Base.Crisps3", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Crisps4", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.convinience_1 then

        DroppedFoodItemsPlaceholder.generateConvinience(randomContent);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.chips_3 then

        square:AddWorldInventoryItem("Base.Crisps", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Crisps2", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Crisps3", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.chips_2 then

        square:AddWorldInventoryItem("Base.Crisps3", 0, 0, 0);
        square:AddWorldInventoryItem("Base.Crisps", 0, 0, 0);

    elseif tileObject:getSprite():getName() == DroppedFoodItemsPlaceholder.chips_1 then

        square:AddWorldInventoryItem("Base.Crisps4", 0, 0, 0);

    end

    SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);

end

DroppedFoodItemsPlaceholder.generateConvinience = function(randomContent)

    if (randomContent >= 80) then
        square:AddWorldInventoryItem("Base.PeanutButter", 0, 0, 0);
    elseif (randomContent >= 60) then
        square:AddWorldInventoryItem("Base.Popcorn", 0, 0, 0);
    elseif (randomContent >= 40) then
        square:AddWorldInventoryItem("Base.Cereal", 0, 0, 0);
    elseif (randomContent >= 20) then
        square:AddWorldInventoryItem("Base.TVDinner", 0, 0, 0);
    end

end
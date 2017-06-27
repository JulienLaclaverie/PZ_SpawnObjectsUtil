DroppedWeaponsItemsPlaceholder = {

    box_shotgun = "placeholder_items_weapons_01_0",
    box_pistol = "placeholder_items_weapons_01_1",
    box_hunting = "placeholder_items_weapons_01_2",
    box_varmint = "placeholder_items_weapons_01_3",
    shotgun = "placeholder_items_weapons_01_4",
    pistol = "placeholder_items_weapons_01_5",
    hunting_rifle = "placeholder_items_weapons_01_6",
    varmint_rifle = "placeholder_items_weapons_01_7",
    kitchen_knife = "placeholder_items_weapons_01_8",
    hunting_knife = "placeholder_items_weapons_01_9",
    tube_full = "placeholder_items_weapons_01_10",
    tube_improved = "placeholder_items_weapons_01_11",
    fiberglass_stock = "placeholder_items_weapons_01_12"

};

DroppedWeaponsItemsPlaceholder.replace = function(square, tileObject)

    local isRemoved = false;

    if tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.box_shotgun then

        square:AddWorldInventoryItem("Base.ShotgunShellsBox", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.box_pistol then

        square:AddWorldInventoryItem("Base.BulletsBox", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.box_hunting then

        square:AddWorldInventoryItem("Base.308Box", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.box_varmint then

        square:AddWorldInventoryItem("Base.223Box", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.shotgun then

        square:AddWorldInventoryItem("Base.Shotgun", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.pistol then

        square:AddWorldInventoryItem("Base.Pistol", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.hunting_rifle then

        square:AddWorldInventoryItem("Base.HuntingRifle", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.varmint_rifle then

        square:AddWorldInventoryItem("Base.VarmintRifle", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.kitchen_knife then

        square:AddWorldInventoryItem("Base.KitchenKnife", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.hunting_knife then

        square:AddWorldInventoryItem("Base.HuntingKnife", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.tube_full then

        square:AddWorldInventoryItem("Base.ChokeTubeFull", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.tube_improved then

        square:AddWorldInventoryItem("Base.ChokeTubeImproved", 0, 0, 0);
        isRemoved = true;

    elseif tileObject:getSprite():getName() == DroppedWeaponsItemsPlaceholder.fiberglass_stock then

        square:AddWorldInventoryItem("Base.FiberglassStock", 0, 0, 0);
        isRemoved = true;

    end

    if (isRemoved == true) then
        SpawnFromPlaceholder.removePlaceholderFromSquare(square, tileObject);
        return true;
    else
        return false;
    end

end

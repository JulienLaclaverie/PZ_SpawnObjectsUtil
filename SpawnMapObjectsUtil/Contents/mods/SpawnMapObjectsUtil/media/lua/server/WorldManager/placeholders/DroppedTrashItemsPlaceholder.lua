----------------------------------------------------
--               SpawnObjectsUtil                 --
--          Created by Onkeen & Sylve007          --
----------------------------------------------------

DroppedTrashItemsPlaceholder = {

    newspaper_1 = "placeholder_items_trash_01_0",
    paper_sheet_1_2 = "placeholder_items_trash_01_1",
    book_1 = "placeholder_items_trash_01_2",
    magasine_1 = "placeholder_items_trash_01_3",
    journal_1 = "placeholder_items_trash_01_4",
    garbage_bag_1 = "placeholder_items_trash_01_8",
    garbage_bag_2 = "placeholder_items_trash_01_9",
    garbage_bag_3 = "placeholder_items_trash_01_16",

};

DroppedTrashItemsPlaceholder.replace = function(square, tileObject)

    local isUsed = false;
    if luautils.stringStarts(tileObject:getSprite():getName(), "placeholder_items_trash_01") then

        local randomContent = ZombRand(0,101);

        if tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.newspaper_1 then

            square:AddWorldInventoryItem("Base.Newspaper", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.paper_sheet_1_2 then

            square:AddWorldInventoryItem("Base.SheetPaper", 0, 0, 0);

            if (randomContent >= 50) then
                square:AddWorldInventoryItem("Base.SheetPaper", 0, 0, 0);
            end
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.book_1 then

            square:AddWorldInventoryItem("Base.Book", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.magasine_1 then

            square:AddWorldInventoryItem("Base.Magazine", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.journal_1 then

            square:AddWorldInventoryItem("Base.Notebook", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.garbage_bag_1 then

            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.garbage_bag_2 then

            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            isUsed = true;

        elseif tileObject:getSprite():getName() == DroppedTrashItemsPlaceholder.garbage_bag_3 then

            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            square:AddWorldInventoryItem("Base.Garbagebag", 0, 0, 0);
            isUsed = true;

        end

    end
    return isUsed;
end


SpawnFromPlaceholder.Add({ name = "DroppedTrashItemsPlaceholder" });
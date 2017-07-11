GeneretorPlaceholder = {

    generator = "placeholder_generator_01_0",

};

GeneretorPlaceholder.replace = function(square, tileObject)

    local isUsed = false;

    -- Generator
    if tileObject:getSprite():getName() == GeneretorPlaceholder.generator then

        square:AddWorldInventoryItem("Base.Generator", 0, 0, 0);
        isUsed = true;

    end

    return isUsed;

end

SpawnFromPlaceholder.Add({ name = "GeneretorPlaceholder", indexModifier = -1 });
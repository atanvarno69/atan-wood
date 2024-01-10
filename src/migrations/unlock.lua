for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if recipes["atan-wood"].category == "chemistry" then
        if technologies["oil-processing"].researched then
            recipes["atan-wood"].enabled = true
        end
    elseif recipes["atan-wood"].category == "crafting-with-fluid" then
        if technologies["automation-2"].researched then
            recipes["atan-wood"].enabled = true
        end
    end
end

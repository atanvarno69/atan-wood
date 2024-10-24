-- Recipe including options from settings
local recipe = {
    type = "recipe",
    name = "atan-wood",
    order = "a[wood]",
    category = settings.startup["atan-wood-category"].value,
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    icon_mipmaps = 4,
    crafting_machine_tint = {
        primary = {
            r = 0.396078431373,
            g = 0.262745098039,
            b = 0.129411764706,
            a = 1,
        },
    },
    ingredients = {
        { type = "fluid", name = "water", amount = settings.startup["atan-wood-ingredient-amount"].value },
    },
    results = {
        { type = "item", name = "wood", amount = settings.startup["atan-wood-product-amount"].value },
    },
    energy_required = settings.startup["atan-wood-crafting-time"].value,
    enabled = false,
    allow_decomposition = false,
    allow_as_intermediate = false,
    allow_productivity = true,
    allow_quality = false,
}
data:extend({ recipe })

-- Unlock recipe with appropriate technology
local unlock = {
    type = "unlock-recipe",
    recipe = "atan-wood",
}
if settings.startup["atan-wood-category"].value == "crafting-with-fluid" then
    table.insert(data.raw.technology["automation-2"].effects, unlock)
elseif settings.startup["atan-wood-category"].value == "chemistry" then
    table.insert(data.raw.technology["oil-processing"].effects, unlock)
end

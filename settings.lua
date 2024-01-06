data:extend({
    {
        type = "string-setting",
        name = "atan-wood-category",
        setting_type = "startup",
        order = "a",
        default_value = "crafting-with-fluid",
        allowed_values = {
            "crafting-with-fluid",
            "chemistry",
        },
    },
    {
        type = "int-setting",
        name = "atan-wood-product-amount",
        setting_type = "startup",
        order = "b",
        default_value = 1,
        minimum_value = 1,
    },
    {
        type = "int-setting",
        name = "atan-wood-ingredient-amount",
        setting_type = "startup",
        order = "c",
        default_value = 100,
        minimum_value = 1,
    },
    {
        type = "double-setting",
        name = "atan-wood-crafting-time",
        setting_type = "startup",
        order = "d",
        default_value = 5,
        minimum_value = 0.1,
    },
})

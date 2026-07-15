local assembler_item = {
    type = "item",
    name = "IronAssembler",
    icon = "__test__/graphics/icons/iron-assembler.png",
    icon_size = 64,
    flags = {},
    subgroup = "production-machine",
    order = "a[test]",
    stack_size = 50,
    place_result = "IronAssembler"
}
--local hematite = {
--    type = "item",
--    name = "hematite",
--    icon = "__test__/graphics/icons/hematite.png",  -- свой путь к иконке
--    icon_size = 64,
--    flags = {"goes-to-main-inventory"},
--    subgroup = "raw-resource",
--    order = "a[hematite]",
--    stack_size = 100
--}

--local iron_sheet = {
--    type = "item",
--    name = "iron-sheet",
--    icon = "__test__/graphics/icons/iron-sheet.png",
--    icon_size = 64,
--    flags = {"goes-to-main-inventory"},
--    subgroup = "intermediate-product",
--    order = "b[iron-sheet]",
--    stack_size = 50
--}
local bloomery_item = {
    type = "item",
    name = "bloomery",        -- имя должно совпадать с именем сущности
    icon = "__test__/graphics/entities/furnace_sir/fur.png",
    icon_size = 64,
    flags = {},
    subgroup = "production-machine",
    order = "a[bloomery]",
    stack_size = 50,
    place_result = "bloomery" -- ссылка на сущность
}

data:extend({bloomery_item})
--data:extend({hematite, iron_sheet})
data:extend({assembler_item})
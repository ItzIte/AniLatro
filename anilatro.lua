-- Load atlases
SMODS.load_file("content/atlas.lua")()

-- Load Utilities
SMODS.load_file("functions.lua")()

-- Load Definitions
SMODS.load_file("definitions.lua")()

-- Load Jokers
ANILATRO_register_items(ANILATRO_ENABLED_JOKERS, "content/jokers")
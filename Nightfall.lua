-- lib stuff
assert(SMODS.load_file("lib/Dynatext.lua"))()
assert(SMODS.load_file("lib/Colors.lua"))()
assert(SMODS.load_file("lib/Rarity.lua"))()

-- main content
assert(SMODS.load_file("src/Decks.lua"))()
assert(SMODS.load_file("src/Vouchers.lua"))()
assert(SMODS.load_file("src/Jokers.lua"))()
--assert(SMODS.load_file("src/Boosters.lua"))()
--assert(SMODS.load_file("src/Misc.lua"))()

-- amulet required content
if (SMODS.Mods["Amulet"] or {}).can_load then
    assert(SMODS.load_file("src/amulet/Jokers.lua"))()
end

SMODS.Atlas {
    key = "modicon",
    path = "mod_icon.png",
    px = 540,
    py = 540
}
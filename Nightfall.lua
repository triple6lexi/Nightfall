-- lib stuff
assert(SMODS.load_file("lib/Dynatext.lua"))()
assert(SMODS.load_file("lib/Colors.lua"))()
assert(SMODS.load_file("lib/Rarity.lua"))()
assert(SMODS.load_file("lib/Misc.lua"))()

-- main content
assert(SMODS.load_file("items/Decks.lua"))()
assert(SMODS.load_file("items/Vouchers.lua"))()
assert(SMODS.load_file("items/Jokers.lua"))()
--assert(SMODS.load_file("items/Tarots.lua"))()
--assert(SMODS.load_file("items/Planets.lua"))()
assert(SMODS.load_file("items/Spectrals.lua"))()
--assert(SMODS.load_file("items/Boosters.lua"))()
--assert(SMODS.load_file("items/Misc.lua"))()

-- amulet required content
if (SMODS.Mods["Amulet"] or {}).can_load then
	assert(SMODS.load_file("items/amulet/Jokers.lua"))()
	--assert(SMODS.load_file("items/amulet/Enhancements.lua"))()
	--assert(SMODS.load_file("items/amulet/Tarots.lua"))()
end

SMODS.Atlas({
	key = "modicon",
	path = "mod_icon.png",
	px = 540,
	py = 540,
})

SMODS.current_mod.badge_text_colour = G.C.nfall_mod_text

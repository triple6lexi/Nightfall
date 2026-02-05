-- taken from Aquillarri
local nfall_colors = {
	SMODS.Gradient({
		key = "fabled",
		colours = {
			HEX("c19a00"),
			HEX("edcd4b"),
		},
		cycle = 2,
	}),
	SMODS.Gradient({
		key = "exalted",
		colours = {
			HEX("68708C"),
			HEX("4D76BD"),
		},
		cycle = 3,
	}),
	SMODS.Gradient({
		key = "voidborn",
		colours = {
			HEX("9300C9"),
			HEX("000000"),
		},
		cycle = 4,
	}),
	SMODS.Gradient({
		key = "cataclysmic",
		colours = {
			HEX("8f0000"),
			HEX("400000"),
		},
		cycle = 5,
	}),
	SMODS.Gradient({
		key = "echips",
		colours = {
			G.C.CHIPS,
			{ 0.5, 0.5, 0.8, 0.8 },
		},
		cycle = 2,
	}),
	SMODS.Gradient({
		key = "emult",
		colours = {
			G.C.MULT,
			{ 0.8, 0.5, 0.5, 0.8 },
		},
		cycle = 2,
	}),
	SMODS.Gradient({
		key = "mod_text",
		colours = {
			HEX("ef9847"),
			HEX("683417"),
		},
		cycle = 6,
	}),
}

loc_colour()
for i, colour in pairs(nfall_colors) do
	G.ARGS.LOC_COLOURS[colour.key] = colour
	G.C[colour.key] = colour
end

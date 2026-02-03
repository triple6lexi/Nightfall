local nfall_colors = {
    SMODS.Gradient {
        key = "fabled",
        colours = {
            HEX("c19a00"),
            HEX("edcd4b")
            },
        cycle = 2
    },  
    SMODS.Gradient {
        key = "cataclysmic",
        colours = {
            HEX("8f0000"),
            HEX("400000")
        },
        cycle = 2
    }
}

loc_colour()
for i,colour in pairs(nfall_colors) do
    G.ARGS.LOC_COLOURS[colour.key] = colour
    G.C[colour.key] = colour
end
-- this is jank so idk
SMODS.DynaTextEffect {
    key = "shake",
    func = function (dynatext, index, letter)
        letter.offset.x = 0 + math.random(-20, 20) * math.random(0.5, 2)
        letter.offset.y = 0 + math.random(-20, 20) * math.random(0.5, 2)
    end
}
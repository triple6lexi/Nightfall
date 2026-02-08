SMODS.Consumable({ -- level up most played hand for each non negative consumable held
	key = "sotera",
	set = "Planet",
	discovered = true,
})
--[[
local _handname, _played = "High Card", -1
for hand_key, hand in pairs(G.GAME.hands) do
	if hand.played > _played then
		_played = hand.played
		_handname = hand_key
	end
end
local most_played = _handname
]]

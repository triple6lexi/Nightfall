SMODS.Consumable({
	key = "expectation",
	set = "Spectral",
	discovered = true,
	pos = { x = 0, y = 0 },
	use = function(self, card, area, copier)
		local result = pseudorandom("nfall_expectation", 1, 3)
		if result == 1 then
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.4,
				func = function()
					play_sound("timpani")
					SMODS.add_card({ set = "Joker", rarity = "nfall_fabled" })
					card:juice_up(0.3, 0.5)
					return true
				end,
			}))
			delay(0.6)
		else
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.4,
				func = function()
					play_sound("timpani")
					SMODS.add_card({ set = "Joker", rarity = "Uncommon" })
					card:juice_up(0.3, 0.5)
					return true
				end,
			}))
			delay(0.6)
		end
	end,
	can_use = function(self, card)
		return #G.jokers.cards < G.jokers.config.card_limit or card.area == G.jokers
	end,
})

SMODS.Joker({
	key = "cryptocurrency",
	discovered = true,
	rarity = 1,
	blueprint_compat = false,
	config = { extra = { money = 5 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = {
			key = "interest_cap",
			set = "Other",
			vars = {
				G.GAME.interest_cap or 25,
			},
		}
		return {
			vars = {
				card.ability.extra.money,
			},
		}
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
			if G.GAME.dollars < G.GAME.interest_cap then
				ease_dollars(card.ability.extra.money)
			end
		end
	end,
})

SMODS.Joker { -- randomized ish effect, can be upgraded by sacrificing consumables to it making its effects stronger
	key = "old_book",
	rarity = "nfall_fabled",

}
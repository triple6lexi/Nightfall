SMODS.Joker({
	key = "the_masked",
	cost = "10",
	discovered = true,
	rarity = 3,
    blueprint_compat = true,
	config = {
		extra = {
			echips = 0.02,
			max = 0.2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.echips,
				1 + card.ability.extra.max,
				1 + card.ability.extra.echips,
			},
		}
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:is_suit("Spades") then
				return {
					echips = 1 + card.ability.extra.echips + math.min(
						((G.jokers.config.card_limit - #G.jokers.cards) * card.ability.extra.echips),
						card.ability.extra.max - card.ability.extra.echips
					),
				}
			end
		end
	end,
})


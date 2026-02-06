SMODS.Joker({
	key = "spare_change",
	discovered = true,
	rarity = 1,
	blueprint_compat = false,
	perishable_compat = true,
	config = {
		extra = {
			money = 5,
		},
	},
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
				return {
					message = localize({
						type = "variable",
						key = "k_nfall_money",
						vars = { card.ability.extra.money },
					}),
					colour = G.C.MONEY,
				}
			end
		end
	end,
})

SMODS.Joker({ -- can be upgraded by sacrificing consumables to it making its effects stronger
	key = "old_book",
	discovered = true,
	cost = 16,
	blueprint_compat = true,
	perishable_compat = false,
	rarity = "nfall_fabled",
	config = {
		extra = {
			chips = 0,
			mult = 0,
			xmult = 1,
			chips_g = 25,
			mult_g = 5,
			xmult_g = 0.5,
			chips_g2 = 5,
			mult_g2 = 1,
			xmult_g2 = 0.1,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.chips,
				card.ability.extra.mult,
				card.ability.extra.xmult,
				card.ability.extra.chips_g,
				card.ability.extra.mult_g,
				card.ability.extra.xmult_g,
			},
		}
	end,
	calculate = function(self, card, context)
		if context.setting_blind and not context.blueprint and G.consumeables.cards[1] then
			for i = 1, #G.consumeables.cards do
				if G.consumeables.cards[i].ability.set == "Planet" then
					card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_g
					G.consumeables.cards[i]:start_dissolve()
					card:juice_up(0.8, 0.8)
				elseif G.consumeables.cards[i].ability.set == "Tarot" then
					card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_g
					G.consumeables.cards[i]:start_dissolve()
					card:juice_up(0.8, 0.8)
				elseif G.consumeables.cards[i].ability.set == "Spectral" then
					card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_g
					G.consumeables.cards[i]:start_dissolve()
					card:juice_up(0.8, 0.8)
				else
					card.ability.extra.chips = card.ability.extra.chips
						+ (card.ability.extra.chips_g2 * math.ceil(G.consumeables.cards[i].cost / 1.5))
					card.ability.extra.mult = card.ability.extra.mult
						+ (card.ability.extra.mult_g2 * math.ceil(G.consumeables.cards[i].cost / 1.5))
					card.ability.extra.xmult = card.ability.extra.xmult
						+ (card.ability.extra.xmult_g2 * math.ceil(G.consumeables.cards[i].cost / 1.5))
					G.consumeables.cards[i]:start_dissolve()
					card:juice_up(0.8, 0.8)
				end
			end
			return {
				message = localize("k_upgrade_ex"),
				colour = G.C.ATTENTION,
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips,
				mult = card.ability.extra.mult,
				xmult = card.ability.extra.xmult,
			}
		end
	end,
})

--[[SMODS.Joker({
	key = "evil",
	discovered = true,
	rarity = "nfall_exalted",
	blueprint_compat = false,
	perishable_compat = false,
	config = {
		extra = {},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {},
		}
	end,
	calculate = function(self, card, context) end,
})]]

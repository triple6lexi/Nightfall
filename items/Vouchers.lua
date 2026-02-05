SMODS.Atlas({
	key = "vouchers",
	path = "Vouchers.png",
	px = 71,
	py = 95,
})

SMODS.Voucher({
	key = "freeroll",
	atlas = "vouchers",
	pos = {
		x = 0,
		y = 0,
	},
	discovered = true,
	cost = 15,
	config = {
		extra = {
			rerolls = 1,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.rerolls,
			},
		}
	end,
	redeem = function(self, card)
		SMODS.change_free_rerolls(card.ability.extra.rerolls)
	end,
})

SMODS.Voucher({
	key = "freeroll2",
	atlas = "vouchers",
	pos = {
		x = 1,
		y = 0,
	},
	discovered = true,
	requires = { "v_nfall_freeroll" },
	cost = 20,
	config = {
		extra = {
			rerolls = 2,
		},
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.rerolls,
			},
		}
	end,
	redeem = function(self, card)
		SMODS.change_free_rerolls(card.ability.extra.rerolls)
	end,
})

SMODS.Voucher({
	key = "cosmic_ray",
	atlas = "vouchers",
	pos = {
		x = 0,
		y = 1,
	},
	discovered = true,
	cost = 10,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable.ability.set == "Spectral" then
			if not G.GAME.used_vouchers["v_nfall_cosmic_ray2"] then
				SMODS.upgrade_poker_hands({
					hands = {
						pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray").key,
						pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray").key,
						pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray").key,
					},
					level_up = 1,
				})
			end
		end
	end,
})

SMODS.Voucher({
	key = "cosmic_ray2",
	atlas = "vouchers",
	pos = {
		x = 1,
		y = 1,
	},
	discovered = true,
	requires = { "v_nfall_cosmic_ray" },
	cost = 15,
	calculate = function(self, card, context)
		if context.using_consumeable then
			SMODS.upgrade_poker_hands({
				hands = {
					pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray2").key,
					pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray2").key,
					pseudorandom_element(SMODS.PokerHands, "nfall_vcosmic_ray2").key,
				},
				level_up = 1,
			})
		end
	end,
})

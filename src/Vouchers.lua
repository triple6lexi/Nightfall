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
	min_ante = 3,
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
	min_ante = 3,
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

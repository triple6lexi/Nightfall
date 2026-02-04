SMODS.Atlas({
	key = "decks",
	path = "decks.png",
	px = 71,
	py = 95,
})

SMODS.Back({
	key = "couponer",
	unlocked = true,
	atlas = "decks",
	pos = {
		x = 0,
		y = 0,
	},
	config = {
		voucher = "v_blank",
		extra = {
			voucher_size = 1,
		},
	},
	loc_vars = function(self, info_queue, back)
		return {
			vars = {
				localize({
					type = "name_text",
					key = self.config.voucher,
					set = "Voucher",
				}),
			},
		}
	end,
	apply = function(self, back)
		G.E_MANAGER:add_event(Event({
			func = function()
				SMODS.change_voucher_limit(self.config.extra.voucher_size)
				return true
			end,
		}))
	end,
})

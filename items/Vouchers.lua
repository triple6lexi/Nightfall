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
			if not G.GAME.used_vouchers["v_nfall_galactic_shimmer"] then
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

SMODS.DrawStep({ -- ripped straight from smods bc idfk what im doing
	key = "nfall_soul_pos",
	order = 60,
	func = function(self)
		if self.config.center.soul_pos and (self.config.center.discovered or self.bypass_discovery_center) then
			local scale_mod = 0.07
				+ 0.02 * math.sin(1.8 * G.TIMERS.REAL)
				+ 0.00
					* math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL)) * math.pi * 14)
					* (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 3
			local rotate_mod = 0.05 * math.sin(1.219 * G.TIMERS.REAL)
				+ 0.00
					* math.sin(G.TIMERS.REAL * math.pi * 5)
					* (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 2

			if type(self.config.center.soul_pos.draw) == "function" then
				self.config.center.soul_pos.draw(self, scale_mod, rotate_mod)
			elseif self.children.floating_sprite then
				self.children.floating_sprite:draw_shader(
					"dissolve",
					0,
					nil,
					nil,
					self.children.center,
					scale_mod,
					rotate_mod,
					nil,
					0.1 + 0.03 * math.sin(1.8 * G.TIMERS.REAL),
					nil,
					0.6
				)
				self.children.floating_sprite:draw_shader(
					"dissolve",
					nil,
					nil,
					nil,
					self.children.center,
					scale_mod,
					rotate_mod
				)
			end
		end
		if self.edition then
			local edition = G.P_CENTERS[self.edition.key]
			if edition.apply_to_float and self.children.floating_sprite then
				self.children.floating_sprite:draw_shader(
					edition.shader,
					nil,
					nil,
					nil,
					self.children.center,
					scale_mod,
					rotate_mod
				)
			end
		end
	end,
	conditions = { vortex = false, facing = "front" },
})

SMODS.Voucher({
	key = "galactic_shimmer",
	atlas = "vouchers",
	pos = {
		x = 1,
		y = 1,
	},
	soul_pos = {
		x = 2,
		y = 1,
	},
	draw = function(self, card, layer)
		if (layer == "card" or layer == "both") and card.sprite_facing == "front" then
			card.children.center:draw_shader("booster", nil, card.ARGS.send_to_shader)
		end
	end,
	discovered = true,
	requires = { "v_nfall_cosmic_ray" },
	cost = 15,
	calculate = function(self, card, context)
		if context.using_consumeable then
			SMODS.upgrade_poker_hands({
				hands = {
					pseudorandom_element(SMODS.PokerHands, "nfall_vgalactic_shimmer").key,
					pseudorandom_element(SMODS.PokerHands, "nfall_vgalactic_shimmer").key,
					pseudorandom_element(SMODS.PokerHands, "nfall_vgalactic_shimmer").key,
				},
				level_up = 1,
			})
		end
	end,
})

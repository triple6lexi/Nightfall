return {
	descriptions = {
		Back = {
			b_nfall_couponer = {
				name = {
					"Couponer Deck",
				},
				text = {
					"Start with {C:attention,T:v_blank}#1#{} voucher",
					"{C:attention}+1{} Voucher Slot",
				},
			},
		},
		Joker = {
			-- main jokers
			j_nfall_spare_change = {
				name = {
					"Spare Change",
				},
				text = {
					"If you are under the",
					"{C:money,E:1}Interest Cap{} at the end",
					"of the round {C:money}+$#1#",
				},
			},
			j_nfall_old_book = {
				name = {
					"Old Book",
				},
				text = {},
			},
			-- jokers that require amulet below
			j_nfall_the_masked = {
				name = {
					"The Masked",
				},
				text = {
					"Scored {C:spades}Spades{} give {X:nfall_echips,C:white}^#3#{C:chips} Chips",
					"increases by {X:nfall_echips,C:white}#1#{} for each",
					"empty {C:attention}Joker Slot{}",
					"Max of {X:nfall_echips,C:white}^#2#{}",
				},
			},
		},
		Enhanced = {},
		Tarot = {},
		Voucher = {
			v_nfall_freeroll = {
				name = {
					"Freeroll",
				},
				text = {
					"{C:attention}#1#{} free {C:green}Reroll",
					"per shop",
				},
			},
			v_nfall_freeroll2 = {
				name = {
					"Freerolling",
				},
				text = {
					"{C:attention}#1#{} additional free",
					"{C:green}Rerolls{} per shop",
				},
			},
			v_nfall_cosmic_ray = {
				name = {
					"Cosmic Ray", -- credit to thunder edge for name idea
				},
				text = {
					"Level up 3 random {C:attention}poker hands{}",
					"when a {C:spectral}Spectral{} card is used",
				},
			},
			v_nfall_cosmic_ray2 = {
				name = {
					"Cosmic Ray2",
				},
				text = {
					{
						"Level up 3 random {C:attention}poker hands{}",
						"when any {C:attention}Consumable{} is used",
					},
					{
						"{C:spectral}Spectral{} cards level up 3",
						"additional {C:attention}poker hands{} when used",
					},
				},
			},
		},
		Spectral = {},
		Tag = {},
		Other = {
			interest_cap = {
				name = {
					"Interest Cap",
				},
				text = {
					"{C:money}$#1#",
				},
			},
		},
	},
	misc = {
		suits_singular = {},
		suits_plural = {},
		dictionary = {
			k_nfall_fabled = "Fabled",
			k_nfall_cataclysmic = "Cataclysmic",
			k_nfall_fail = "Failed!",
		},
		v_dictionary = {
			k_nfall_money = "+$#1#",
		},
	},
}

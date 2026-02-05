return {
	descriptions = {
		Back = {
			b_nfall_couponer = {
				name = {
					"Couponer Deck", -- credit to astra for name idea
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
				text = {
					{
						"Destroy all {C:attention}consumables",
						"when {C:attention}Blind{} is selected",
					},
					{
						"When a {C:planet}Planet{} card is destroyed gain {C:chips}+#4#{} Chips,",
						"When a {C:tarot}Tarot{} card is destroyed gain {C:mult}+#5#{} Mult,",
						"When a {C:spectral}Spectral{} card is destroyed gain {X:mult,C:white}X#6#{} Mult",
					},
					{
						"{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips, {C:mult}+#2#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
					},
				},
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
			v_nfall_galactic_shimmer = {
				name = {
					"Galactic Shimmer",
				},
				text = {
					"Level up 3 random {C:attention}poker hands{}",
					"when any {C:attention}Consumable{} is used",
				},
			},
		},
		Spectral = {
			c_nfall_expectation = {
				name = {
					"Expectation", -- credit to lily for name idea
				},
				text = {
					"Fixed {C:green}1 in 3{} chance to create",
					"a {C:nfall_fabled}Fabled{} Joker",
					"if that fails create",
					"an {C:uncommon}Uncommon{} Joker",
				},
			},
		},
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

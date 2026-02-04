local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
	local ret = oldfunc(change_context)
	-- make the title screen use different background colors
	G.SPLASH_BACK:define_draw_steps({
		{
			shader = "splash",
			send = {
				{ name = "time", ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
				{ name = "vort_speed", val = 0.2 },
				{ name = "colour_1", ref_table = G.C, ref_value = "nfall_mod_text" },
				{ name = "colour_2", ref_table = G.C, ref_value = "nfall_cataclysmic" },
			},
		},
	})

	return ret
end

/process/supply
	var/tmpTime1 = 0
	var/tmpTime2 = 0
	var/list/points = list(GERMAN = 500, SOVIET = 500, JAPANESE = 500, AMERICAN = 500)
	var/list/codes = list(GERMAN = 1234, SOVIET = 1234, JAPANESE = 1234, AMERICAN = 1234)
	var/list/german_special_reinforcements = list(

		"Medic" = 0,
		"Engineer" = 0,
		"Sniper" = 0,
		"Flamethrower Soldier" = 0,
		"Machinegunner" = 0
	)
	var/list/german_crate_types = list(

		// AMMO AND MISC.
		"MG34 Belts" = /obj/structure/closet/crate/ww2/ammo_mg34,
		"Luger Ammo" = /obj/structure/closet/crate/ww2/luger_ammo,
		"C96 Mauser Ammo" = /obj/structure/closet/crate/ww2/mauser_ammo,
		"Walther Ammo" = /obj/structure/closet/crate/ww2/walther_ammo,
		"Kar Ammo" = /obj/structure/closet/crate/ww2/mauser_rifle_ammo,
		"Mp40 Ammo" = /obj/structure/closet/crate/ww2/mp40,
	//		"Mines" = /obj/structure/closet/crate/bettymines,
		"Grenades" = /obj/structure/closet/crate/ww2/stg1924,
		"Panzerfausts" = /obj/structure/closet/crate/ww2/panzerfaust,
		"Mortar Shells" = /obj/structure/closet/crate/ww2/mortar_shells,
		"Barbwire Crate" = /obj/structure/closet/crate/ww2/barbwire,
		"Sandbags Crate" = /obj/structure/closet/crate/sandbags,

		// MATERIALS
		"Wood Planks" = /obj/structure/closet/crate/wood,
		"Steel Sheets" = /obj/structure/closet/crate/steel,
		"Iron Ingots" = /obj/structure/closet/crate/iron,
		"Glass Sheets" = /obj/structure/closet/crate/glass,

		// GUNS & ARTILLERY
		"MP40" = /obj/structure/closet/crate/ww2/mp40_guns,
		"MG34" = /obj/structure/closet/crate/ww2/mg34_weapon,
		"7,5 cm FK 18 Artillery Piece" = /obj/structure/cannon/modern,
		"Walther Crate" = /obj/structure/closet/crate/ww2/walther_pistols,
		"Mounted MG34" = /obj/item/weapon/gun/projectile/automatic/stationary/modern/mg34,

		// ARTILLERY AMMO
		"Artillery Ballistic Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells,
		"Artillery Gas Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells_gas,

		// CLOSETS

		// MINES
	//		"Betty Mines Crate" = /obj/structure/closet/crate/bettymines,

		// ANIMAL CRATES
	//		"German Shepherd Crate" = /obj/structure/largecrate/animal/dog/german,

		// MEDICAL STUFF
		"Advanced Firstaid" = /obj/item/weapon/storage/firstaid/adv
	)

	var/list/soviet_special_reinforcements = list(

		"Medic",
		"Engineer",
		"Sniper",
		"Anti-Tank Soldier",
		"Machinegunner"
	)

	var/static/list/soviet_crate_types = list(

		// AMMO AND MISC.
		"Maxim Belts" = /obj/structure/closet/crate/ww1/ammo_maxim,
		"TT30 Ammo" = /obj/structure/closet/crate/ww2/tt30,
		"Mosin Ammo" = /obj/structure/closet/crate/ww2/mosin_ammo,
		"PPSH Ammo" = /obj/structure/closet/crate/ww2/ppsh,
		"DP28 Ammo" = /obj/structure/closet/crate/ww2/dp28_ammo,
	//		"Mines" = /obj/structure/closet/crate/bettymines,
		"Grenades" = /obj/structure/closet/crate/ww2/rgd33,
		"Mortar Shells" = /obj/structure/closet/crate/ww2/mortar_shells,
		"Barbwire Crate" = /obj/structure/closet/crate/ww2/barbwire,
		"Sandbags Crate" = /obj/structure/closet/crate/sandbags,

		// MATERIALS
		"Wood Planks" = /obj/structure/closet/crate/wood,
		"Steel Sheets" = /obj/structure/closet/crate/steel,
		"Iron Ingots" = /obj/structure/closet/crate/iron,
		"Glass Sheets" = /obj/structure/closet/crate/glass,

		// GUNS & ARTILLERY
		"PPSH" = /obj/structure/closet/crate/ww2/ppsh_guns,
		"DP28" = /obj/structure/closet/crate/ww2/dp28_weapon,
		"7,5 cm FK 18 Artillery Piece" = /obj/structure/cannon/modern,
		"TT30" = /obj/structure/closet/crate/ww2/tt30,
		"Maxim" = /obj/item/weapon/gun/projectile/automatic/stationary/modern/maxim/ww2,

		// ARTILLERY AMMO
		"Artillery Ballistic Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells,
		"Artillery Gas Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells_gas,

		// CLOSETS

		// MINES
	//		"Betty Mines Crate" = /obj/structure/closet/crate/bettymines,

		// ANIMAL CRATES
	//		"German Shepherd Crate" = /obj/structure/largecrate/animal/dog/german,

		// MEDICAL STUFF
		"Advanced Firstaid" = /obj/item/weapon/storage/firstaid/adv
	)
	var/list/japan_special_reinforcements = list(

		"Medic" = 0,
		"Engineer" = 0,
		"Sniper" = 0,
		"Flamethrower Soldier" = 0,
		"Machinegunner" = 0
	)
	var/list/japan_crate_types = list(

		// AMMO AND MISC.
		"MG34 Belts" = /obj/structure/closet/crate/ww2/ammo_mg34,
		"Luger Ammo" = /obj/structure/closet/crate/ww2/luger_ammo,
		"C96 Mauser Ammo" = /obj/structure/closet/crate/ww2/mauser_ammo,
		"Walther Ammo" = /obj/structure/closet/crate/ww2/walther_ammo,
		"Kar Ammo" = /obj/structure/closet/crate/ww2/mauser_rifle_ammo,
		"Mp40 Ammo" = /obj/structure/closet/crate/ww2/mp40,
	//		"Mines" = /obj/structure/closet/crate/bettymines,
		"Grenades" = /obj/structure/closet/crate/ww2/stg1924,
		"Panzerfausts" = /obj/structure/closet/crate/ww2/panzerfaust,
		"Mortar Shells" = /obj/structure/closet/crate/ww2/mortar_shells,
		"Barbwire Crate" = /obj/structure/closet/crate/ww2/barbwire,
		"Sandbags Crate" = /obj/structure/closet/crate/sandbags,

		// MATERIALS
		"Wood Planks" = /obj/structure/closet/crate/wood,
		"Steel Sheets" = /obj/structure/closet/crate/steel,
		"Iron Ingots" = /obj/structure/closet/crate/iron,
		"Glass Sheets" = /obj/structure/closet/crate/glass,

		// GUNS & ARTILLERY
		"MP40" = /obj/structure/closet/crate/ww2/mp40_guns,
		"MG34" = /obj/structure/closet/crate/ww2/mg34_weapon,
		"7,5 cm FK 18 Artillery Piece" = /obj/structure/cannon/modern,
		"Walther Crate" = /obj/structure/closet/crate/ww2/walther_pistols,
		"Mounted MG34" = /obj/item/weapon/gun/projectile/automatic/stationary/modern/mg34,

		// ARTILLERY AMMO
		"Artillery Ballistic Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells,
		"Artillery Gas Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells_gas,

		// CLOSETS

		// MINES
	//		"Betty Mines Crate" = /obj/structure/closet/crate/bettymines,

		// ANIMAL CRATES
	//		"German Shepherd Crate" = /obj/structure/largecrate/animal/dog/german,

		// MEDICAL STUFF
		"Advanced Firstaid" = /obj/item/weapon/storage/firstaid/adv
	)
	var/list/american_special_reinforcements = list(

		"Medic" = 0,
		"Engineer" = 0,
		"Sniper" = 0,
		"Flamethrower Soldier" = 0,
		"Machinegunner" = 0
	)
	var/list/american_crate_types = list(

		// AMMO AND MISC.
		"MG34 Belts" = /obj/structure/closet/crate/ww2/ammo_mg34,
		"Luger Ammo" = /obj/structure/closet/crate/ww2/luger_ammo,
		"C96 Mauser Ammo" = /obj/structure/closet/crate/ww2/mauser_ammo,
		"Walther Ammo" = /obj/structure/closet/crate/ww2/walther_ammo,
		"Kar Ammo" = /obj/structure/closet/crate/ww2/mauser_rifle_ammo,
		"Mp40 Ammo" = /obj/structure/closet/crate/ww2/mp40,
	//		"Mines" = /obj/structure/closet/crate/bettymines,
		"Grenades" = /obj/structure/closet/crate/ww2/stg1924,
		"Panzerfausts" = /obj/structure/closet/crate/ww2/panzerfaust,
		"Mortar Shells" = /obj/structure/closet/crate/ww2/mortar_shells,
		"Barbwire Crate" = /obj/structure/closet/crate/ww2/barbwire,
		"Sandbags Crate" = /obj/structure/closet/crate/sandbags,

		// MATERIALS
		"Wood Planks" = /obj/structure/closet/crate/wood,
		"Steel Sheets" = /obj/structure/closet/crate/steel,
		"Iron Ingots" = /obj/structure/closet/crate/iron,
		"Glass Sheets" = /obj/structure/closet/crate/glass,

		// GUNS & ARTILLERY
		"MP40" = /obj/structure/closet/crate/ww2/mp40_guns,
		"MG34" = /obj/structure/closet/crate/ww2/mg34_weapon,
		"7,5 cm FK 18 Artillery Piece" = /obj/structure/cannon/modern,
		"Walther Crate" = /obj/structure/closet/crate/ww2/walther_pistols,
		"Mounted MG34" = /obj/item/weapon/gun/projectile/automatic/stationary/modern/mg34,

		// ARTILLERY AMMO
		"Artillery Ballistic Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells,
		"Artillery Gas Shells Crate" = /obj/structure/closet/crate/ww2/artillery_shells_gas,

		// CLOSETS

		// MINES
	//		"Betty Mines Crate" = /obj/structure/closet/crate/bettymines,

		// ANIMAL CRATES
	//		"German Shepherd Crate" = /obj/structure/largecrate/animal/dog/german,

		// MEDICAL STUFF
		"Advanced Firstaid" = /obj/item/weapon/storage/firstaid/adv
	)

	var/list/reinforcements_costs = list(

		"Medic" = 50,
		"Engineer" = 150,
		"Sniper" = 100,
		"Anti-Tank Soldier" = 250,
		"Flamethrower Soldier" = 100,
		"Machinegunner" = 100
	)

	var/list/crate_costs = list(

		// AMMO AND MISC.
		"Maxim Belts" = 60,
		"MG34 Belts" = 60,
		"Luger Ammo" = 50,
		"Walther Ammo" = 50,
		"C96 Mauser Ammo" = 50,
		"Kar Ammo" = 60,
		"Mp40 Ammo" = 75,
	//	"SVT Ammo" = 100,
		"TT30 Ammo" = 50,
		"Mosin Ammo" = 60,
		"PPSH Ammo" = 75,
		"DP28 Ammo" = 85,

	//		"Mines" = 50,
		"Grenades" = 100,
		"Panzerfausts" = 200,
		"Mortar Shells" = 125,
		"Barbwire Crate" = 100,
		"Sandbags Crate" = 100,

		// MATERIALS
		"Wood Planks" = 100,
		"Glass Sheets" = 125,
		"Iron Ingots" = 150,
		"Steel Sheets" = 175,

		// GUNS & ARTILLERY
		"MP40" = 125,
		"MG34" = 175,
		"PPSH" = 125,
		"DP28" = 175,
		"TT30" = 100,
		"7,5 cm FK 18 Artillery Piece" = 300,
		"Walther Crate" = 150,
		"Maxim" = 300,
		"Movable MG34" = 300,

		// ARTILLERY AMMO
		"Artillery Ballistic Shells Crate" = 150,
		"Artillery Gas Shells Crate" = 250,

		// CLOSETS
		//"Tool Closet" = 100,

		// MINES
	//		"Betty Mines Crate" = 200,

		// ANIMAL CRATES
	//		"German Shepherd Crate" = 100,
	//		"Samoyed Crate" = 100,

		// MEDICAL STUFF
		"Advanced Firstaid" = 65

	)

/process/supply/setup()
	name = "supply points"
	schedule_interval = 2 SECONDS
	fires_at_gamestates = list(GAME_STATE_PLAYING, GAME_STATE_FINISHED)
	priority = PROCESS_PRIORITY_IRRELEVANT
	processes.supply = src

/process/supply/fire()

	tmpTime1 += schedule_interval
	tmpTime2 += schedule_interval

	if (!map)
		return

	points[GERMAN] += map.supply_points_per_tick[GERMAN]

	points[RUSSIAN] += map.supply_points_per_tick[RUSSIAN]

	points[JAPANESE] += map.supply_points_per_tick[JAPANESE]

	points[JAPANESE] += map.supply_points_per_tick[JAPANESE]

	// change supply codes every 10 minutes (but not both at once) to stop metagaming
	if (prob(10) && tmpTime1 >= 6000)
		var/original_code = codes[GERMAN]
		codes[GERMAN] = rand(1000,9999)
		for (var/mob/living/carbon/human/H in human_mob_list)
			if (H.original_job && H.original_job.is_officer)
				if (H.original_job.base_type_flag() == GERMAN)
					H.replace_memory(original_code, codes[GERMAN])
		radio2germans("The supply passcode has been changed to [codes[GERMAN]] due to security concerns.", "High Command Private Announcements")
		tmpTime1 = 0

	else if (prob(10) && tmpTime2 >= 6000)
		var/original_code = codes[RUSSIAN]
		codes[RUSSIAN] = rand(1000,9999)
		for (var/mob/living/carbon/human/H in human_mob_list)
			if (H.original_job && H.original_job.is_officer)
				if (H.original_job.base_type_flag() == RUSSIAN)
					H.replace_memory(original_code, codes[RUSSIAN])
		radio2soviets("The supply passcode has been changed to [codes[RUSSIAN]] due to security concerns.", "High Command Private Announcements")
		tmpTime2 = 0
	else if (prob(10) && tmpTime2 >= 6000)
		var/original_code = codes[JAPANESE]
		codes[JAPANESE] = rand(1000,9999)
		for (var/mob/living/carbon/human/H in human_mob_list)
			if (H.original_job && H.original_job.is_officer)
				if (H.original_job.base_type_flag() == JAPANESE)
					H.replace_memory(original_code, codes[JAPANESE])
		radio2japan("The supply passcode has been changed to [codes[JAPANESE]] due to security concerns.", "High Command Private Announcements")
		tmpTime2 = 0
	else if (prob(10) && tmpTime2 >= 6000)
		var/original_code = codes[AMERICAN]
		codes[AMERICAN] = rand(1000,9999)
		for (var/mob/living/carbon/human/H in human_mob_list)
			if (H.original_job && H.original_job.is_officer)
				if (H.original_job.base_type_flag() == AMERICAN)
					H.replace_memory(original_code, codes[AMERICAN])
		radio2american("The supply passcode has been changed to [codes[AMERICAN]] due to security concerns.", "High Command Private Announcements")
		tmpTime2 = 0
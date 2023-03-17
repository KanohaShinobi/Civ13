/proc/radio2faction(msg, faction = GERMAN, var/channel = "High Command Announcements")
	switch (faction)
		if (GERMAN)
			return radio2germans(msg, channel)
		if (RUSSIAN)
			return radio2soviets(msg, channel)
		if (JAPANESE)
			return radio2japan(msg, channel)
		if (AMERICAN)
			return radio2american(msg, channel)

/proc/radio2germans(msg, var/channel = "High Command Announcements")
	var/obj/item/radio/R = main_radios[GERMAN]
	if (R && R.loc)
		processes.callproc.queue(R, /obj/item/radio/proc/announce, list(msg, channel), 3)
		return TRUE
	return FALSE

/proc/radio2SS(msg)
	var/obj/item/radio/R = main_radios[GERMAN]
	if (R && R.loc)
		processes.callproc.queue(R, /obj/item/radio/proc/announce, list(msg, "SS Announcements"), 3)
		return TRUE
	return FALSE

/proc/radio2soviets(msg, var/channel = "High Command Announcements")
	var/obj/item/radio/R = main_radios[RUSSIAN]
	if (R && R.loc)
		processes.callproc.queue(R, /obj/item/radio/proc/announce, list(msg, channel), 3)
		return TRUE
	return FALSE

/proc/radio2japan(msg, var/channel = "High Command Announcements")
	var/obj/item/radio/R = main_radios[JAPANESE]
	if (R && R.loc)
		processes.callproc.queue(R, /obj/item/radio/proc/announce, list(msg, channel), 3)
		return TRUE
	return FALSE

/proc/radio2american(msg, var/channel = "High Command Announcements")
	var/obj/item/radio/R = main_radios[AMERICAN]
	if (R && R.loc)
		processes.callproc.queue(R, /obj/item/radio/proc/announce, list(msg, channel), 3)
		return TRUE
	return FALSE

/proc/battlereport2faction(faction)
	switch (faction)
		if (GERMAN)
			radio2germans("Battle Status Report: [alive_german.len] alive, [heavily_injured_german.len] heavily injured or unconscious, [dead_german.len] dead.<br>")

		if (RUSSIAN)
			radio2soviets("Battle Status Report: [alive_russian.len] alive, [heavily_injured_russian.len] heavily injured or unconscious, [dead_russian.len] dead.<br>")

		if (AMERICAN)
			radio2american("Battle Status Report: [alive_american.len] alive, [heavily_injured_american.len] heavily injured or unconscious, [dead_american.len] dead.<br>")

		if (JAPANESE)
			radio2japan("Battle Status Report: [alive_japanese.len] alive, [heavily_injured_japanese.len] heavily injured or unconscious, [dead_japanese.len] dead.<br>")
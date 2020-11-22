//GLOBAL_LIST_INIT(ms13_safe_prize_pool, list()

/obj/machinery/computer/arcade/ms13
	name = "random hackable console"
	desc = "random hackable console"
	icon_state = "computer"
	icon_keyboard = null
	icon_screen = "invaders"
	light_color = LIGHT_COLOR_GREEN

/obj/item/circuitboard/computer/arcade/ms13/bruteforce
	name = "Brute Force Console (Computer Board)"
	icon_state = "generic"
	build_path = /obj/machinery/computer/arcade/ms13/bruteforce

/obj/item/circuitboard/computer/arcade/ms13/safe
	name = "Safe Hacking Console (Computer Board)"
	icon_state = "generic"
	build_path = /obj/machinery/computer/arcade/ms13/safe

// ** Safe Hacking ** //

/obj/machinery/computer/arcade/ms13/safe
	name = "Electronic Safe"
	desc = "Capacitors for Tumblers."
	icon_state = "computer"
	circuit = /obj/item/circuitboard/computer/arcade/ms13/safe

// ** Brute Force Hack** //


/obj/machinery/computer/arcade/ms13/bruteforce
	name = "Control Console"
	desc = "The Gibson Doesn't Stand A Chance."
	icon_state = "computer"
	circuit = /obj/item/circuitboard/computer/arcade/ms13/bruteforce
	var/enemy_name = "Sys_Admin"
	var/temp = "The Code Stares Back" //Temporary message, for attack messages, etc
	var/player_hp = 30 //Player health/attack points
	var/player_mp = 10
	var/enemy_hp = 45 //Enemy health/attack points
	var/enemy_mp = 20
	var/gameover = FALSE
	var/blocked = FALSE //Player cannot attack/heal while set
	var/turtle = 0
	var/list/weapons = list()

	enemy_name = "Sys_Admin"

/obj/machinery/computer/arcade/ms13/bruteforce/ui_interact(mob/_user)
	. = ..()
	if (!isliving(_user))
		return
	var/mob/living/user = _user
	var/dat = "<a href='byond://?src=[REF(src)];close=1'>Close</a>"
	dat += "<center><h4>[enemy_name]</h4></center>"

	dat += "<br><center><h3>[temp]</h3></center>"
	dat += "<br><center>Connection Stability: [player_hp] | File Access: [player_mp] | System Integrity: [enemy_hp]</center>"

	if (gameover)
		dat += "<center><b><a href='byond://?src=[REF(src)];newgame=1'>New Game</a>"
	else
		dat += "<center><b><a href='byond://?src=[REF(src)];attack=1'>Attack</a> | "
		dat += "<a href='byond://?src=[REF(src)];reconnect=1'>Reconnect</a> | "
		dat += "<a href='byond://?src=[REF(src)];arrange_files=1'>Arrange Files</a>"

	dat += "</b></center>"
	var/datum/browser/popup = new(user, "arcade", "RobCo Sys-Admin Interface")
	popup.set_content(dat)
	popup.open()

/obj/machinery/computer/arcade/ms13/bruteforce/Topic(href, href_list)
	if(..())
		return

	if (!blocked && !gameover)
		var/gamerSkillLevel = usr.mind?.get_skill_level(/datum/skill/gaming)
		var/gamerSkill = usr.mind?.get_skill_modifier(/datum/skill/gaming, SKILL_RANDS_MODIFIER)
		if (href_list["attack"])
			blocked = TRUE
			var/attackamt = rand(2,6) + rand(0, gamerSkill)
			temp = "You tap away at your keyboard for [attackamt] damage!"
			playsound(loc, 'sound/arcade/hit.ogg', 50, TRUE, extrarange = -3)
			updateUsrDialog()
			if(turtle > 0)
				turtle--

			sleep(10)
			enemy_hp -= attackamt
			arcade_action(usr)

		else if (href_list["reconnect"])
			blocked = TRUE
			var/maxPointCost = 3
			if(gamerSkillLevel >= SKILL_LEVEL_JOURNEYMAN)
				maxPointCost = 2
			var/pointamt = rand(1, maxPointCost)
			var/healamt = rand(6,8) + rand(0, gamerSkill)
			temp = "You sacrifice [pointamt] files to strengthen for [healamt] bytes of connection!"
			playsound(loc, 'sound/arcade/heal.ogg', 50, TRUE, extrarange = -3)
			updateUsrDialog()
			turtle++

			sleep(10)
			player_mp -= pointamt
			player_hp += healamt
			blocked = TRUE
			updateUsrDialog()
			arcade_action(usr)

		else if (href_list["arrange_files"])
			blocked = TRUE
			var/chargeamt = rand(4,7) + rand(0, gamerSkill)
			temp = "You rearrange [chargeamt] files to confuse the system."
			playsound(loc, 'sound/arcade/mana.ogg', 50, TRUE, extrarange = -3)
			player_mp += chargeamt
			if(turtle > 0)
				turtle--

			updateUsrDialog()
			sleep(10)
			arcade_action(usr)

	if (href_list["close"])
		usr.unset_machine()
		usr << browse(null, "window=arcade")

	else if (href_list["newgame"]) //Reset everything
		temp = "New Round"
		player_hp = 30
		player_mp = 10
		enemy_hp = 45
		enemy_mp = 20
		gameover = FALSE
		turtle = 0

		if(obj_flags & EMAGGED)
			Reset()
			obj_flags &= ~EMAGGED

	add_fingerprint(usr)
	updateUsrDialog()
	return

/obj/machinery/computer/arcade/ms13/bruteforce/proc/arcade_action(mob/_user)
	if (!isliving(_user))
		return
	var/mob/living/user = _user
	var/xp_gained = 0
	if ((enemy_mp <= 0) || (enemy_hp <= 0))
		if(!gameover)
			gameover = TRUE
			temp = "[enemy_name] quietly gives way. Access Granted."
			playsound(loc, 'sound/arcade/win.ogg', 50, TRUE, extrarange = -3)

			if(obj_flags & EMAGGED)
				new /obj/effect/spawner/newbomb/timer/syndicate(loc)
				new /obj/item/clothing/head/collectable/petehat(loc)
				message_admins("[ADMIN_LOOKUPFLW(usr)] has outbombed Cuban Pete and been awarded a bomb.")
				log_game("[key_name(usr)] has outbombed Cuban Pete and been awarded a bomb.")
				Reset()
				obj_flags &= ~EMAGGED
				xp_gained += 100
			else
				prizevend(user)
				xp_gained += 50
			SSblackbox.record_feedback("nested tally", "arcade_results", 1, list("win", (obj_flags & EMAGGED ? "emagged":"normal")))


	else if ((obj_flags & EMAGGED) && (turtle >= 4))
		var/boomamt = rand(5,10)
		temp = "[enemy_name] throws a bomb, exploding you for [boomamt] damage!"
		playsound(loc, 'sound/arcade/boom.ogg', 50, TRUE, extrarange = -3)
		player_hp -= boomamt

	else if ((enemy_mp <= 5) && (prob(70)))
		var/stealamt = rand(2,3)
		temp = "[enemy_name] steals [stealamt] of your power!"
		playsound(loc, 'sound/arcade/steal.ogg', 50, TRUE, extrarange = -3)
		player_mp -= stealamt
		updateUsrDialog()

		if (player_mp <= 0)
			gameover = TRUE
			sleep(10)
			temp = "You have lost control of the system! FORCE DISCONNECT"
			playsound(loc, 'sound/arcade/lose.ogg', 50, TRUE, extrarange = -3)
			if(obj_flags & EMAGGED)
				user.gib()
			SSblackbox.record_feedback("nested tally", "arcade_results", 1, list("loss", "mana", (obj_flags & EMAGGED ? "emagged":"normal")))

	else if ((enemy_hp <= 10) && (enemy_mp > 4))
		temp = "[enemy_name] verifies its system for 4 stability!"
		playsound(loc, 'sound/arcade/heal.ogg', 50, TRUE, extrarange = -3)
		enemy_hp += 4
		enemy_mp -= 4

	else
		var/attackamt = rand(3,6)
		temp = "[enemy_name] blocks connection for [attackamt] bytes!"
		playsound(loc, 'sound/arcade/hit.ogg', 50, TRUE, extrarange = -3)
		player_hp -= attackamt

	if ((player_mp <= 0) || (player_hp <= 0))
		gameover = TRUE
		temp = "CONNECTION TERMINATED"
		playsound(loc, 'sound/arcade/lose.ogg', 50, TRUE, extrarange = -3)
		xp_gained += 10//pity points
		if(obj_flags & EMAGGED)
			user.gib()
		SSblackbox.record_feedback("nested tally", "arcade_results", 1, list("loss", "hp", (obj_flags & EMAGGED ? "emagged":"normal")))

	user?.mind?.adjust_experience(/datum/skill/gaming, xp_gained+1)//always gain at least 1 point of XP
	blocked = FALSE
	return


/obj/machinery/computer/arcade/ms13/bruteforce/emag_act(mob/living/user)
	if(obj_flags & EMAGGED)
		return
	to_chat(user, "<span class='warning'>A mesmerizing Rhumba beat starts playing from the arcade machine's speakers!</span>")
	temp = "If you die in the game, you die for real!"
	player_hp = 30
	player_mp = 10
	enemy_hp = 45
	enemy_mp = 20
	gameover = FALSE
	blocked = FALSE

	obj_flags |= EMAGGED

	enemy_name = "Cuban Pete"
	name = "Outbomb Cuban Pete"


	updateUsrDialog()

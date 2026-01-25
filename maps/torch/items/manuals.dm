/obj/item/book/manual/solgov_law
	name = "Sol Central Government Law"
	desc = "A brief overview of SolGov Law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "Sol Central Government Law"

/obj/item/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Sol_Central_Government_Law" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/book/manual/military_law
	name = "The Sol Code of Military Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "The Sol Code of Military Justice"

/obj/item/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Sol_Code_of_Uniform_Justice" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/book/manual/sol_sop
	name = "Standard Operating Procedure"
	desc = "SOP aboard the SEV Torch."
	icon_state = "booksolregs"
	author = "The Sol Central Government"
	title = "Standard Operating Procedure"

/obj/item/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Standard_Operating_Procedure" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/material/folder/nt/rd

/obj/item/material/folder/envelope/preset/captain
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - TORCH UMBRA'."

/obj/item/material/folder/envelope/preset/captain/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/item/material/folder/envelope/preset/captain/LateInitialize(mapload)
	var/obj/overmap/visitable/torch = map_sectors["[z]"]
	var/memo = {"
<tt><center><b>[SPAN_COLOR("red", "SECRET - CODE WORDS: SHATAB")]</b>
<h3>RUSSIAN NAVY DIVISION COMMAND</h3>
</center>
<b>FROM:</b> Admiral Sergey Volkov<br>
<b>TO:</b> Shtab Divizion Commander of flagship "KREPOST"<br>
<b>SUBJECT:</b> Combat Order #[rand(1000,9999)]<br>
<hr>
Captain 1st Rank.<br>

Your division group is tasked with conducting a special operation in sector [generate_system_name()].

<i>DIVISION COMPOSITION:</i><br>
<li><b>Flagship "KREPOST"</b> — assault command center (you)</li>
<li><b>"OGNEVOY UDAR"</b> — fire support ship</li>
<li><b>"SNABZHENIE-01"</b> — logistics and rear support</li>

<b>ORDERS:</b><br>
1. Landing of marine assault on planet [generate_system_name()]<br>
2. Suppression of enemy fire points by "Ognevoy Udar"<br>
3. Supply assault with ammunition and fuel<br>
4. Capture key enemy objects<br>

<i>PRIORITY TARGETS:</i><br>
• Destruction of enemy assault forces<br>
• Capture artifacts of unknown origin<br>
• Reconnaissance of extraterrestrial signals<br>

In case of distress signal — provide assistance at any cost.<br>
Docking code: [torch.docking_codes]<br>
Report via secure channel every 2 hours.<br>

<i>Admiral Volkov, Russian Navy Commander.</i></tt>
<i>Stamp: Division Command Russian Navy.</i>
	"}
	new/obj/item/paper(src, memo, "Standing Orders")
	new/obj/item/paper/umbra(src)

/obj/item/material/folder/envelope/preset/rep
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - TORCH UMBRA'."
	seal_stamp = "General Secretary rubber stamp"

/obj/item/material/folder/envelope/preset/rep/Initialize()
	. = ..()
	new/obj/item/paper/umbra(src)

/obj/item/paper/umbra
	name = "UMBRA Protocol"
	info = {"
<tt><center><b><span style='color: red'>TOP SECRET - CODE WORDS: SHATAB TENEVOY</span></b>
<h3>RUSSIAN FED NAVY GENERAL STAFF</h3>
<img src = rflogo.png>
</center>
<b>FROM:</b> Colonel-General Viktor Kuznetsov, GRU Special Department<br>
<b>TO:</b> Shtab Divizion Commander of flagship "KREPOST"<br>
<b>CC:</b> Political Officer aboard "KREPOST"<br>
<b>SUBJECT:</b> TENEVOY Protocol<br>
<hr>
This supplements standard operating procedures. Unlike SOP, this protocol is MANDATORY and not subject to division commander's discretion. Essential for mission security.<br>

Protocol activates ONLY via secure channel transmission from Main Navy Staff. Sender identity concealed but source verifiable.<br>
Activation phrase: <b>"ZVEZDY UGASAYUT"</b> (Stars Go Dark) - exact sequence, no acknowledgment required.

<li>Division findings classified TOP SECRET, state security level "TENEVOY". Access restricted to FSB-cleared personnel and division command staff only.</li>
<li>Classification applies retroactively. Non-cleared personnel exposed to classified material will be detained and transferred to FSB upon return to base.</li>
<li>Confiscate all personal interstellar communication devices immediately.</li>
<li>Abort current operation. Set course for Murmansk Naval Base, Barents Sea. Await contact. No port calls en route unless critical.</li>

Drastic but necessary precaution. Continue normal operations until activated.
<i>Colonel-General Kuznetsov.</i></tt>
<i>Stamped: General Staff Russian Navy - TENEVOY Protocol Authorized.</i>
	"}

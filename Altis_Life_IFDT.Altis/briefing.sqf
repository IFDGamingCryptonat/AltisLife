waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["ifd", "IFD Server Info"];
// player createDiarySubject ["example_main","This section contains examples"];

/*  Example
	player createDiaryRecord ["example_main", //Container
		[
			"example subsection", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
player createDiaryRecord ["ifd",
	[
	"Laws", 
		"
		Including but not limited to:<br/><br/>
		Traffic Offences:<br/>
		Speed Limit<br/>
		- In a towns or city's<br/>
		-- Main Road 75 km<br/>
		-- Side Streets 50 km<br/>
		- All Other Areas<br/>
		-- Main Highway 120 km<br/>
		-- Offroad 90 km<br/>
		Obey all stop and yield signs<br/>
		Yield to sirens and lights<br/>
		Driving w/out headlights in low light conditions<br/>
		Evading police will automatically result in jail time<br/>
		Do not hover over main cities<br/>
		Do not fly less than 200m over a main city<br/>
		Only land at authorized non-emergency landing zones<br/><br/>
		Criminal Offences:<br/>
		Public Disturbance<br/>
		Public Indecency<br/>
		Vandalism or Destruction of Property<br/>
		Obstruction of Justice<br/>
		Disobeying Lawful Orders<br/>
		Theft: Attempted, Petty, Auto, Armed Robbery<br/>
		Kidnapping<br/>
		Rape<br/>
		Manslaughter<br/><br/>
		Firearm Offences:<br/>
		Holding a weapon in city limits<br/>
		Without a Firearms Permit<br/>
		Possession of an illegal firearm<br/>
		Discharging of Weapon<br/>
		Trafficking<br/><br/>
		Narcotic Offences<br/>
		Possession of Marijuana, Heroin, or Cocaine<br/>
		Trafficking<br/>
		Turtle Poaching
		"
	]
	];	
player createDiaryRecord ["ifd",
	[
	"Controls", 
		"
		<br/>
		Controls<br/>
		Y: Open Player Menu<br/>
		U: Lock and unlock cars or house<br/>
		F: Police Siren<br/>
		Left Shift + F: Police Tweet<br/>
		T: Vehicle Trunk<br/>
		Left Shift + H: Holster weapon<br/>
		Left Ctrl + H: Un-Holster weapon<br/>
		Left Shift + R: Restrain (Cop Only)<br/>
		Left Shift + K: Surrender (Puts Hands Behind Your Back)<br/>
		Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
		Windows Key: Vehicle/Player/House Interaction Menu
		"
	]
	];
player createDiaryRecord ["ifd",
	[
	"Unique Server Items", 
		"
		<br/>
		Whitelisted Medics<br/>
		Whitelisted Rebels<br/>
		Capturable Gang Areas<br/>
		Persistent Gangs<br/>
		Random Interesting Vehicle Missions<br/>
		News Crews<br/>
		Wilderness Shop<br/>
		Go Karts<br/>
		Unique Bank Robbery System<br/>
		Player Housing<br/>
		Player Storage<br/>
		All Arma 3 Clothing Items Available<br/>
		Unique Black Market<br/>
		Repair Vehicles<br/>
		Unlimited Toolkit<br/>
		Improved Holstering System<br/>
		Zeus Mode<br/>
		Locked Backpacks<br/>
		Locked Vehicle Storage<br/>
		Flashbangs<br/>
		Unique Oil System<br/>
		Rob Gas Stations<br/>
		Gas Stations Vehicle Repair<br/>
		Gun Range
		"
	]
];
player createDiaryRecord ["ifd",
	[
	"Economy and Jobs", 
		"
		<br/>
		Jobs:<br/><br/>
		Delivery Missions: $Varies by distance<br/>
		Apples: $50<br/>
		Peaches: $55<br/>
		Fishing: (Need Diving Gear) $40 - $700<br/>
		Sand Processing: $10,000 Licence, $400<br/>
		Copper Processing: $35,000 Licence, $800<br/>
		Iron Processing: $45,000 Licence, $800<br/>
		Diamond Processing: $100,000 Licence, $1800<br/>
		Oil Processing: $150,000 Licence, $3900<br/>
		<br/>
		Criminal Life:<br/>
		Grave Robbing: (Need Shovel) $300<br/>
		Stealing Vehicles: (Requires Lockpicks) $Varies<br/>
		Interesting Vehicle: (Requires Lockpicks) $Varies<br/>
		Rob Gas Stations: (Requires Weapon) $Varies<br/>
		Rob Civilians: (Requires Weapon) $Varies<br/>
		Turtle Poaching: (Requires Diving Gear and SDAR) $3000<br/>
		Marijuana: $100,000 License, $2,000<br/>
		Heroin: $135,000 License, $2,500<br/>
		Cocaine: $150,000 License, $3,500<br/>
		<br/>
		General Licences:<br/>
		Drivers Licence: $1,000<br/>
		Diving License: $5,000<br/>
		Boat Licence: $10,000<br/>
		Truck Licence: $135,000<br/>
		Pilot Licence: $100,000<br/>
		Gun Store License: $50,000<br/>
		House License: $75,000<br/>
		Black Market License: $125,000
		"
	]
];
player createDiaryRecord ["ifd",
	[
	"Donator Perks", 
		"
		<br/>
		Donator Level 1<br/>
		- Donator - Monthly Donation<br/>
		- Increase in pay<br/>
		- Access to donator Shops<br/>
		- Large discounts at donator shops<br/>
		- Spawn location at donor area<br/>
		Donate at www.ifdgaming.com<br/><br/>
		Donator Level 2<br/>
		Super Donator - $50 or greater<br/>
		- Free house with personal spawn and a few shops<br/>
		- Includes perks from previous level<br/>
		- Larger increase in pay<br/>
		- Further discount in donator shops<br/>
		- Access to special vehicles and helicopters<br/>
		Donate at www.ifdgaming.com<br/><br/>
		DISCLAIMER<br/>
		When you donate you are NOT buying or purchasing anything. After donating a certain amount to the community the admin staff offer to give you a gift (access to in game items) in return for your generosity.<br/>
		Please note that we retain the right to revoke your access to any and all in game items and in some cases our game server for any reason at our own discretion, this includes but is not limited to, breaking any of our server rules. Every donation you send is for the community and will be used to keep our services funded, and because of that we are not eligible to refund you. If you do not accept this then simply do not donate.<br/>
		All information given to admins is 100% confidential we will not or do not give out personal information regarding our donators or any member of this community.
		"
	]
];
player createDiaryRecord ["ifd",
	[
	"Server Rules",
		"
		<br/>
		This is a role-play (RP) server those who don't role-play will find themselves out in the cold. Don't know how to role-play? Watch YouTube. Though there are no official roles/jobs (aside from cop, rebel, or medic) the options are endless. From starting your own taxi company to being the AAA repair guy. The possibilities are only limited by your own imagination. Since Altis Life is a role-play mod, you are expected to role-play in certain situations.<br/><br/>
		Role-play Required:<br/>
		- Almost any interaction with the cops or rebels (getting pulled over, searched/arrested, paying rebel taxes, etc)<br/>
		- Conducting or being a victim of a robbery<br/>
		- Going to prison or being held hostage<br/>
		- Any other situation where another player is legitimately trying to RP with you.<br/>
		<br/>
		Kickable/Bannable Offences<br/>
		<br/>
		YOU MAY BE REMOVED AT AN ADMIN'S DISCRETION<br/>
		- VDM / RDM (see descriptions below)<br/>
		- Refusing to Role Play<br/>
		- Disconnecting to avoid RP<br/>
		- Breaking New Life Rule<br/>
		- Excessively flying over, shooting in, or generally attacking main cities / spawn points<br/>
		- Spamming any chat channel (open mic, playing music, or typed messages)<br/>
		- Giving non-donators, donator gear<br/>
		- Wearing a cop uniform and/or impersonating a cop as a civ is NOT allowed.<br/>
		- Exploiting (Bug Abusing)<br/>
		- Shooting / Killing / Robbing people in the 'No Fire Zones' (See area specific rules below)<br/>
		- Purposefully killing a medic, cops, or civs w/ out RP reason.<br/>
		- Entering a Cop or Rebel area is NOT allowed unless you are playing as a cop or rebel - Punishable by death or arrest<br/>
		- Looking in other backpacks w/ out permission<br/>
		- Running in front of a vehicle purposefully<br/>
		- Attempting to get into another players vehicle w/ out permission<br/>
		- Duplicating items or using exploits<br/>
		- Using items that have been hacked into the game<br/>
		- Abusing bugs or game mechanics for gain<br/>
		- Ejecting out of police vehicles while being detained<br/><br/>
		These are considered exploits, and you will not be kicked, but banned.<br/><br/>
		- Getting out of jail via any method other than escaping via helicopter.<br/>
		- Killing yourself to get out of role-play. Getting out of being tazed, restrained, arrested, jail, etc. Do not pay bail and kill yourself so you can respawn in town.<br/>
		- If someone sends you an unobtainable amount of money, report this to an admin IMMEDIATELY and transfer the money to an admin when told to. Do this ASAP or an admin may ban you if you do not comply.<br/>
		- Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to an admin immediately and stay away from them.<br/>
		- Abusing bugs or game mechanics for gain. Is there a replicating gun somewhere? Report it and leave it alone. If an admin catches you abusing the glitch, you will be banned.<br/><br/>
		Safe Zones<br/>
		<br/>
		Safe zones are areas where shooting/killing other players, regardless of the RP situation is not allowed. These include the police bases, donator area, any vehicle spawn, training facilities and some cities.<br/>
		If killing occurs around or in these areas it may be punishable ban.<br/>
		<br/>
		VDM/RDM<br/>
		<br/>
		AT NO POINT ARE THESE ALLOWED:<br/><br/>
		RDM (Random Death Matching)<br/>
		-Shooting someone without role play cause<br/>
		-Kill on sight<br/>
		-Mass killing players<br/>
		-Killing people without a warning (e.g. during a robbery you are allowed to kill a player if he refuses to follow your orders)<br/><br/>
		VDM (Vehicle Death Matching)<br/>
		- There is absolutely no situation where intentionally using your vehicle to harm or kill another player is acceptable.<br/>
		- Driving over people is not allowed, even for self defence. The only way we would not see this as an offence is if there is absolutely no way to avoid the person, e.g. people running into the path of your moving vehicle or standing near your vehicle in order to get killed by you. If this happens report it to the admins using the 'Cell Phone' or notify a senior officer if no admins are available.<br/>
		<br/>
		New Life Rule<br/>
		<br/>
		You must not return to the place you died for 15 minutes after your death. When 15 minutes are up you can return to that place.
		Applies to all players, especially to cops and rebels.<br/>
		The only exception is if you are revived by a medic, in which the RP situation can continue (being arrested/captured).<br/>
		This Includes:<br/><br/>
		- Crashing your car and getting killed<br/>
		- Getting shot and killed (even cops killed at the bank or a checkpoint)<br/>
		- Getting killed due to no food or water (starvation / dehydration)<br/>
		- Exceptions to the New Life Rule<br/>
		- If you die due to RDM or VDM<br/>
		- If you die due to a glitch (be sure to notify an admin of the glitch)
		"
	]
];
player createDiaryRecord ["ifd",
	[
	"IFD Info and Contact",
		"
		Team Speak:<br/>
		Server: ts3.ifdgaming.com<br/>
		<br/>
		Communication rules:<br/>
		All cops must be in Teamspeak.<br/>
		Civs are welcome to use available open civ or gang groups.<br/>
		If your communication device is removed in game you should refrain from talking in TS.</br>
		Do not go in the cop channels if you're not a cop.<br/>
		Download Teamspeak at: www.teamspeak.com<br/>
		<br/>
		<br/>
		Website:<br/>
		<br/>
		http://www.ifdgaming.com<br/>
		Bugs, ideas, and compensation request all on the forums.<br/><br/>
		On the Website:<br/>
		Forums - Talk to the community, submit bugs, suggestions, etc.<br/>
		Game Guides - Detailed info/guides/costs in regards to Altis Life on the IFD server.<br/>
		Server Rules - In-depth list of rules and definitions.<br/>
		Officer Application - Enforce the laws of Altis.<br/>
		Rebel Application - Protect rebel interests.<br/>
		Gang Application - Play with a group? Apply for a gang to get some nice perks!<br/>
		IFD Application - Become a member of the IFD team.<br/>
		www.ifdgaming.com<br/>
		<br/><br/>
		Donations:<br/>
		<br/>
		Your generous donation will help keep the server running and allow us to keep adding new content.<br/>
		As a thank you for being donator you will have access to items, weapons, and vehicles at half off. See the donator section for more info.<br/><br/>
		Donate securely with PayPal at our website ifdgaming.com.
		"
	]
];
# [GTC] Gatecrash pack generator

require './booster/default'

class GTC < DefaultBooster
	def initialize
		mythic = [
			'Gideon, Champion of Justice',
			'Enter the Infinite',
			'Lord of the Void',
			'Hellkite Tyrant',
			'Giant Adephage',
			'Aurelia, the Warleader',
			'Aurelia\'s Fury',
			'Borborygmos Enraged',
			'Deathpact Angel',
			'Domri Rade',
			'Duskmantle Seer',
			'Lazav, Dimir Mastermind',
			'Master Biomancer',
			'Obzedat, Ghost Council',
			'Prime Speaker Zegana',
			]
		rare = [
			'Angelic Skirmisher',
			'Blind Obedience',
			'Frontline Medic',
			'Luminate Primordial',
			'Diluvian Primordial',
			'Realmwright',
			'Simic Manipulator',
			'Stolen Identity',
			'Crypt Ghast',
			'Ogre Slumlord',
			'Sepulchral Primordial',
			'Undercity Plague',
			'Five-Alarm Fire',
			'Legion Loyalist',
			'Molten Primordial',
			'Wrecking Ogre',
			'Gyre Sage',
			'Ooze Flux',
			'Skarrg Goliath',
			'Sylvan Primordial',
			'Alms Beast',
			'Assemble the Legion',
			'Biovisionary',
			'Clan Defiance',
			'Consuming Aberration',
			'Fathom Mage',
			'Firemane Avenger',
			'Foundry Champion',
			'Gruul Ragebeast',
			'High Priest of Penance',
			'Merciless Eviction',
			'Mind Grind',
			'Mystic Genesis',
			'Rubblehulk',
			'Signal the Clans',
			'Soul Ransom',
			'Spark Trooper',
			'Treasury Thrull',
			'Unexpected Results',
			'Whispering Madness',
			'Biomass Mutation',
			'Boros Reckoner',
			'Immortal Servitude',
			'Nightveil Specter',
			'Rubblebelt Raiders',
			'Glaring Spotlight',
			'Illusionist\'s Bracers',
			'Breeding Pool',
			'Godless Shrine',
			'Sacred Foundry',
			'Stomping Ground',
			'Thespian\'s Stage',
			'Watery Grave',
			]
		uncommon = [
			'Boros Elite',
			'Debtor\'s Pulpit',
			'Guardian of the Gateless',
			'Hold the Gates',
			'Holy Mantle',
			'Knight of Obligation',
			'Murder Investigation',
			'Righteous Charge',
			'Urbis Protector',
			'Aetherize',
			'Agoraphobia',
			'Gridlock',
			'Incursion Specialist',
			'Mindeye Drake',
			'Rapid Hybridization',
			'Sapphire Drake',
			'Simic Fluxmage',
			'Voidwalk',
			'Dying Wish',
			'Gateway Shade',
			'Illness in the Ranks',
			'Killing Glare',
			'Mental Vapors',
			'Smog Elemental',
			'Thrull Parasite',
			'Undercity Informer',
			'Wight of Precinct Six',
			'Cinder Elemental',
			'Crackling Perimeter',
			'Firefist Striker',
			'Hellraiser Goblin',
			'Homing Lightning',
			'Mark for Death',
			'Ripscale Predator',
			'Skullcrack',
			'Viashino Shanktail',
			'Alpha Authority',
			'Crowned Ceratok',
			'Experiment One',
			'Hindervines',
			'Miming Slime',
			'Rust Scarab',
			'Serene Remembrance',
			'Tower Defense',
			'Wasteland Viper',
			'Bane Alley Broker',
			'Boros Charm',
			'Call of the Nightwing',
			'Cartel Aristocrat',
			'Dimir Charm',
			'Dinrova Horror',
			'Duskmantle Guildmage',
			'Elusive Krasis',
			'Fortress Cyclops',
			'Frenzied Tilling',
			'Ghor-Clan Rampager',
			'Ground Assault',
			'Gruul Charm',
			'Nimbus Swimmer',
			'One Thousand Lashes',
			'Ordruun Veteran',
			'Orzhov Charm',
			'Simic Charm',
			'Skarrg Guildmage',
			'Sunhome Guildmage',
			'Truefire Paladin',
			'Urban Evolution',
			'Vizkopa Confessor',
			'Vizkopa Guildmage',
			'Zameck Guildmage',
			'Arrows of Justice',
			'Burning-Tree Emissary',
			'Coerced Confession',
			'Gift of Orzhova',
			'Merfolk of the Depths',
			'Boros Keyrune',
			'Dimir Keyrune',
			'Gruul Keyrune',
			'Orzhov Keyrune',
			'Simic Keyrune',
			]
		common = [
			'Aerial Maneuver',
			'Angelic Edict',
			'Assault Griffin',
			'Basilica Guards',
			'Court Street Denizen',
			'Daring Skyjek',
			'Dutiful Thrull',
			'Guildscorn Ward',
			'Knight Watch',
			'Nav Squad Commandos',
			'Shielded Passage',
			'Smite',
			'Syndic of Tithes',
			'Zarichi Tiger',
			'Clinging Anemones',
			'Cloudfin Raptor',
			'Frilled Oculus',
			'Hands of Binding',
			'Keymaster Rogue',
			'Last Thoughts',
			'Leyline Phantom',
			'Metropolis Sprite',
			'Sage\'s Row Denizen',
			'Scatter Arc',
			'Skygames',
			'Spell Rupture',
			'Totally Lost',
			'Way of the Thief',
			'Balustrade Spy',
			'Basilica Screecher',
			'Contaminated Ground',
			'Corpse Blockade',
			'Death\'s Approach',
			'Devour Flesh',
			'Grisly Spectacle',
			'Gutter Skulk',
			'Horror of the Dim',
			'Midnight Recovery',
			'Shadow Alley Denizen',
			'Shadow Slice',
			'Slate Street Ruffian',
			'Syndicate Enforcer',
			'Act of Treason',
			'Bomber Corps',
			'Ember Beast',
			'Foundry Street Denizen',
			'Furious Resistance',
			'Madcap Skills',
			'Massive Raid',
			'Mugging',
			'Scorchwalker',
			'Skinbrand Goblin',
			'Structural Collapse',
			'Tin Street Market',
			'Towering Thunderfist',
			'Warmind Infantry',
			'Adaptive Snapjaw',
			'Burst of Strength',
			'Crocanura',
			'Disciple of the Old Ways',
			'Forced Adaptation',
			'Greenside Watcher',
			'Ivy Lane Denizen',
			'Naturalize',
			'Predator\'s Rapport',
			'Scab-Clan Charger',
			'Slaughterhorn',
			'Spire Tracer',
			'Verdant Haven',
			'Wildwood Rebirth',
			'Drakewing Krasis',
			'Executioner\'s Swing',
			'Hydroform',
			'Kingpin\'s Pet',
			'Martial Glory',
			'Mortus Strider',
			'Paranoid Delusions',
			'Primal Visitation',
			'Psychic Strike',
			'Purge the Profane',
			'Ruination Wurm',
			'Shambleshark',
			'Skyknight Legionnaire',
			'Wojek Halberdiers',
			'Zhur-Taa Swine',
			'Beckon Apparition',
			'Bioshift',
			'Deathcult Rogue',
			'Pit Fight',
			'Shattering Blow',
			'Armored Transport',
			'Millennial Gargoyle',
			'Prophetic Prism',
			'Razortip Whip',
			'Riot Gear',
			'Skyblinder Staff',
			'Boros Guildgate',
			'Dimir Guildgate',
			'Gruul Guildgate',
			'Orzhov Guildgate',
			'Simic Guildgate',
			]
		basicland = [
			'Plains',
			'Plains',
			'Plains',
			'Plains',
			'Plains',
			'Island',
			'Island',
			'Island',
			'Island',
			'Island',
			'Swamp',
			'Swamp',
			'Swamp',
			'Swamp',
			'Swamp',
			'Mountain',
			'Mountain',
			'Mountain',
			'Mountain',
			'Mountain',
			'Forest',
			'Forest',
			'Forest',
			'Forest',
			'Forest',
			]
		super(mythic, rare, uncommon, common, basicland)
	end
end
# [RTR] Return to Ravnica pack generator

require './booster/default.rb'

class RTR < DefaultBooster
	def initialize
		mythic = [
			'Angel of Serenity',
			'Jace, Architect of Thought',
			'Necropolis Regent',
			'Utvara Hellkite',
			'Worldspine Wurm',
			'Armada Wurm',
			'Epic Experiment',
			'Isperia, Supreme Judge',
			'Jarad, Golgari Lich Lord',
			'Niv-Mizzet, Dracogenius',
			'Rakdos, Lord of Riots',
			'Rakdos\'s Return',
			'Sphinx\'s Revelation',
			'Trostani, Selesnya\'s Voice',
			'Vraska the Unseen',
			]
		rare = [
			'Martial Law',
			'Palisade Giant',
			'Precinct Captain',
			'Rest in Peace',
			'Conjured Currency',
			'Cyclonic Rift',
			'Search the City',
			'Sphinx of the Chimes',
			'Desecration Demon',
			'Grave Betrayal',
			'Pack Rat',
			'Underworld Connections',
			'Ash Zealot',
			'Chaos Imps',
			'Guild Feud',
			'Mizzium Mortars',
			'Deadbridge Goliath',
			'Death\'s Presence',
			'Mana Bloom',
			'Wild Beastmaster',
			'Abrupt Decay',
			'Archon of the Triumvirate',
			'Carnival Hellsteed',
			'Collective Blessing',
			'Corpsejack Menace',
			'Counterflux',
			'Detention Sphere',
			'Dreadbore',
			'Firemind\'s Foresight',
			'Havoc Festival',
			'Hypersonic Dragon',
			'Jarad\'s Orders',
			'Lotleth Troll',
			'Loxodon Smiter',
			'Mercurial Chemister',
			'Righteous Authority',
			'Slaughter Games',
			'Supreme Verdict',
			'Wayfaring Temple',
			'Azor\'s Elocutors',
			'Cryptborn Horror',
			'Deathrite Shaman',
			'Growing Ranks',
			'Nivmagus Elemental',
			'Chromatic Lantern',
			'Pithing Needle',
			'Volatile Rig',
			'Blood Crypt',
			'Grove of the Guardian',
			'Hallowed Fountain',
			'Overgrown Tomb',
			'Steam Vents',
			'Temple Garden',
			]
		uncommon = [
			'Arrest',
			'Azorius Justiciar',
			'Bazaar Krovod',
			'Fencing Ace',
			'Phantom General',
			'Security Blockade',
			'Soul Tithe',
			'Sphere of Safety',
			'Aquus Steed',
			'Blustersquall',
			'Faerie Impostor',
			'Hover Barrier',
			'Psychic Spiral',
			'Skyline Predator',
			'Soulsworn Spirit',
			'Syncopate',
			'Assassin\'s Strike',
			'Dark Revenant',
			'Shrieking Affliction',
			'Slum Reaper',
			'Tavern Swindler',
			'Thrill-Kill Assassin',
			'Ultimate Price',
			'Zanikev Locust',
			'Bloodfray Giant',
			'Goblin Rally',
			'Guttersnipe',
			'Minotaur Aggressor',
			'Pyroconvergence',
			'Racecourse Fury',
			'Street Spasm',
			'Vandalblast',
			'Archweaver',
			'Brushstrider',
			'Gobbling Ooze',
			'Golgari Decoy',
			'Oak Street Innkeeper',
			'Savage Surge',
			'Seek the Horizon',
			'Slime Molding',
			'Azorius Charm',
			'Call of the Conclave',
			'Dreg Mangler',
			'Fall of the Gavel',
			'Golgari Charm',
			'Hellhole Flailer',
			'Heroes\' Reunion',
			'Izzet Charm',
			'Izzet Staticaster',
			'Korozda Guildmage',
			'Lyev Skyknight',
			'New Prahv Guildmage',
			'Nivix Guildmage',
			'Rakdos Charm',
			'Rakdos Ragemutt',
			'Rakdos Ringleader',
			'Risen Sanctuary',
			'Rites of Reaping',
			'Rix Maadi Guildmage',
			'Selesnya Charm',
			'Skymark Roc',
			'Teleportal',
			'Thoughtflare',
			'Treasured Find',
			'Vitu-Ghazi Guildmage',
			'Blistercoil Weird',
			'Dryad Militant',
			'Judge\'s Familiar',
			'Rakdos Cackler',
			'Slitherhead',
			'Azorius Keyrune',
			'Civic Saber',
			'Codex Shredder',
			'Golgari Keyrune',
			'Izzet Keyrune',
			'Rakdos Keyrune',
			'Selesnya Keyrune',
			'Street Sweeper',
			'Tablet of the Guilds',
			'Rogue\'s Passage',
			]
		common = [
			'Armory Guard',
			'Avenging Arrow',
			'Azorius Arrester',
			'Concordia Pegasus',
			'Ethereal Armor',
			'Eyes in the Skies',
			'Keening Apparition',
			'Knightly Valor',
			'Rootborn Defenses',
			'Selesnya Sentry',
			'Seller of Songbirds',
			'Sunspire Griffin',
			'Swift Justice',
			'Trained Caracal',
			'Trostani\'s Judgment',
			'Cancel',
			'Chronic Flooding',
			'Crosstown Courier',
			'Dispel',
			'Doorkeeper',
			'Downsize',
			'Inaction Injunction',
			'Inspiration',
			'Isperia\'s Skywatch',
			'Mizzium Skin',
			'Paralyzing Grasp',
			'Runewing',
			'Stealer of Secrets',
			'Tower Drake',
			'Voidwielder',
			'Catacomb Slug',
			'Cremate',
			'Daggerdrome Imp',
			'Dead Reveler',
			'Destroy the Evidence',
			'Deviant Glee',
			'Drainpipe Vermin',
			'Launch Party',
			'Grim Roustabout',
			'Mind Rot',
			'Ogre Jailbreaker',
			'Perilous Shadow',
			'Sewer Shambler',
			'Stab Wound',
			'Terrus Wurm',
			'Annihilating Fire',
			'Batterhorn',
			'Bellows Lizard',
			'Cobblebrute',
			'Dynacharge',
			'Electrickery',
			'Explosive Impact',
			'Gore-House Chainwalker',
			'Lobber Crew',
			'Pursuit of Flight',
			'Splatter Thug',
			'Survey the Wreckage',
			'Tenement Crasher',
			'Traitorous Instinct',
			'Viashino Racketeer',
			'Aerial Predation',
			'Axebane Guardian',
			'Axebane Stag',
			'Centaur\'s Herald',
			'Chorus of Might',
			'Drudge Beetle',
			'Druid\'s Deliverance',
			'Gatecreeper Vine',
			'Giant Growth',
			'Horncaller\'s Chant',
			'Korozda Monitor',
			'Rubbleback Rhino',
			'Stonefare Crocodile',
			'Towering Indrik',
			'Urban Burgeoning',
			'Auger Spree',
			'Centaur Healer',
			'Chemister\'s Trick',
			'Common Bond',
			'Coursers\' Accord',
			'Dramatic Rescue',
			'Essence Backlash',
			'Goblin Electromancer',
			'Grisly Salvage',
			'Hussar Patrol',
			'Search Warrant',
			'Skull Rend',
			'Sluiceway Scorpion',
			'Spawn of Rix Maadi',
			'Trestle Troll',
			'Frostburn Weird',
			'Golgari Longlegs',
			'Rakdos Shred-Freak',
			'Sundering Growth',
			'Vassal Soul',
			'Azorius Guildgate',
			'Golgari Guildgate',
			'Izzet Guildgate',
			'Rakdos Guildgate',
			'Selesnya Guildgate',
			'Transguild Promenade',
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

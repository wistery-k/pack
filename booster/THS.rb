# [THS] Theros pack generator

require './booster/default.rb'

class THS < DefaultBooster
	def initialize
		mythic = [
			'Elspeth, Sun\'s Champion',
			'Heliod, God of the Sun',
			'Master of Waves',
			'Thassa, God of the Sea',
			'Erebos, God of the Dead',
			'Hythonia the Cruel',
			'Purphoros, God of the Forge',
			'Stormbreath Dragon',
			'Nylea, God of the Hunt',
			'Polukranos, World Eater',
			'Ashen Rider',
			'Ashiok, Nightmare Weaver',
			'Medomai the Ageless',
			'Underworld Cerberus',
			'Xenagos, the Reveler',
			]
		rare = [
			'Celestial Archon',
			'Chained to the Rocks',
			'Fabled Hero',
			'Gift of Immortality',
			'Hundred-Handed One',
			'Soldier of the Pantheon',
			'Spear of Heliod',
			'Artisan of Forms',
			'Bident of Thassa',
			'Curse of the Swine',
			'Meletis Charlatan',
			'Prognostic Sphinx',
			'Shipbreaker Kraken',
			'Swan Song',
			'Abhorrent Overlord',
			'Agent of the Fates',
			'Hero\'s Downfall',
			'Nighthowler',
			'Thoughtseize',
			'Whip of Erebos',
			'Anger of the Gods',
			'Ember Swallower',
			'Firedrinker Satyr',
			'Hammer of Purphoros',
			'Labyrinth Champion',
			'Rageblood Shaman',
			'Titan of Eternal Fire',
			'Anthousa, Setessan Hero',
			'Arbor Colossus',
			'Boon Satyr',
			'Bow of Nylea',
			'Mistcutter Hydra',
			'Reverent Hunter',
			'Sylvan Caryatid',
			'Anax and Cymede',
			'Daxos of Meletis',
			'Fleecemane Lion',
			'Polis Crusher',
			'Prophet of Kruphix',
			'Psychic Intrusion',
			'Reaper of the Wilds',
			'Steam Augury',
			'Triad of Fates',
			'Tymaret, the Murder King',
			'Akroan Horse',
			'Colossus of Akros',
			'Pyxis of Pandemonium',
			'Nykthos, Shrine to Nyx',
			'Temple of Abandon',
			'Temple of Deceit',
			'Temple of Mystery',
			'Temple of Silence',
			'Temple of Triumph',
			]
		uncommon = [
			'Dauntless Onslaught',
			'Decorated Griffin',
			'Evangel of Heliod',
			'Favored Hoplite',
			'Glare of Heresy',
			'Heliod\'s Emissary',
			'Ordeal of Heliod',
			'Phalanx Leader',
			'Vanquish the Foul',
			'Dissolve',
			'Gainsay',
			'Horizon Scholar',
			'Ordeal of Thassa',
			'Sea God\'s Revenge',
			'Sealock Monster',
			'Thassa\'s Emissary',
			'Triton Fortune Hunter',
			'Triton Tactics',
			'Cutthroat Maneuver',
			'Dark Betrayal',
			'Erebos\'s Emissary',
			'Insatiable Harpy',
			'Keepsake Gorgon',
			'Mogis\'s Marauder',
			'Ordeal of Erebos',
			'Rescue from the Underworld',
			'Tormented Hero',
			'Arena Athlete',
			'Coordinated Assault',
			'Fanatic of Mogis',
			'Flamespeaker Adept',
			'Magma Jet',
			'Ordeal of Purphoros',
			'Peak Eruption',
			'Purphoros\'s Emissary',
			'Stoneshock Giant',
			'Artisan\'s Sorrow',
			'Centaur Battlemaster',
			'Hunt the Hunter',
			'Karametra\'s Acolyte',
			'Nemesis of Mortals',
			'Nylea\'s Emissary',
			'Ordeal of Nylea',
			'Satyr Piper',
			'Warriors\' Lesson',
			'Akroan Hoplite',
			'Battlewise Hoplite',
			'Chronicler of Heroes',
			'Destructive Revelry',
			'Horizon Chimera',
			'Kragma Warcaller',
			'Pharika\'s Mender',
			'Sentry of the Underworld',
			'Shipwreck Singer',
			'Spellheart Chimera',
			'Anvilwrought Raptor',
			'Burnished Hart',
			'Flamecast Wheel',
			'Prowler\'s Helm',
			'Witches\' Eye',
			]
		common = [
			'Battlewise Valor',
			'Cavalry Pegasus',
			'Chosen by Heliod',
			'Divine Verdict',
			'Ephara\'s Warden',
			'Gods Willing',
			'Hopeful Eidolon',
			'Lagonna-Band Elder',
			'Last Breath',
			'Leonin Snarecaster',
			'Observant Alseid',
			'Ray of Dissolution',
			'Scholar of Athreos',
			'Setessan Battle Priest',
			'Setessan Griffin',
			'Silent Artisan',
			'Traveling Philosopher',
			'Wingsteed Rider',
			'Yoked Ox',
			'Annul',
			'Aqueous Form',
			'Benthic Giant',
			'Breaching Hippocamp',
			'Coastline Chimera',
			'Crackling Triton',
			'Fate Foretold',
			'Griptide',
			'Lost in a Labyrinth',
			'Mnemonic Wall',
			'Nimbus Naiad',
			'Omenspeaker',
			'Prescient Chimera',
			'Stymied Hopes',
			'Thassa\'s Bounty',
			'Triton Shorethief',
			'Vaporkin',
			'Voyage\'s End',
			'Wavecrash Triton',
			'Asphodel Wanderer',
			'Baleful Eidolon',
			'Blood-Toll Harpy',
			'Boon of Erebos',
			'Cavern Lampad',
			'Disciple of Phenax',
			'Felhide Minotaur',
			'Fleshmad Steed',
			'Gray Merchant of Asphodel',
			'Lash of the Whip',
			'Loathsome Catoblepas',
			'March of the Returned',
			'Pharika\'s Cure',
			'Read the Bones',
			'Returned Centaur',
			'Returned Phalanx',
			'Scourgemark',
			'Sip of Hemlock',
			'Viper\'s Kiss',
			'Akroan Crusader',
			'Borderland Minotaur',
			'Boulderfall',
			'Deathbellow Raider',
			'Demolish',
			'Dragon Mantle',
			'Ill-Tempered Cyclops',
			'Lightning Strike',
			'Messenger\'s Speed',
			'Minotaur Skullcleaver',
			'Portent of Betrayal',
			'Priest of Iroas',
			'Rage of Purphoros',
			'Satyr Rambler',
			'Spark Jolt',
			'Spearpoint Oread',
			'Titan\'s Strength',
			'Two-Headed Cerberus',
			'Wild Celebrants',
			'Agent of Horizons',
			'Commune with the Gods',
			'Defend the Hearth',
			'Fade into Antiquity',
			'Feral Invocation',
			'Leafcrown Dryad',
			'Nessian Asp',
			'Nessian Courser',
			'Nylea\'s Disciple',
			'Nylea\'s Presence',
			'Pheres-Band Centaurs',
			'Satyr Hedonist',
			'Savage Surge',
			'Sedge Scorpion',
			'Shredding Winds',
			'Staunch-Hearted Warrior',
			'Time to Feed',
			'Voyaging Satyr',
			'Vulpine Goliath',
			'Bronze Sable',
			'Fleetfeather Sandals',
			'Guardians of Meletis',
			'Opaline Unicorn',
			'Traveler\'s Amulet',
			'Unknown Shores',
			]
		basicland = [
			'Plains',
			'Plains',
			'Plains',
			'Plains',
			'Island',
			'Island',
			'Island',
			'Island',
			'Swamp',
			'Swamp',
			'Swamp',
			'Swamp',
			'Mountain',
			'Mountain',
			'Mountain',
			'Mountain',
			'Forest',
			'Forest',
			'Forest',
			'Forest',
			]
		super(mythic, rare, uncommon, common, basicland)
	end
end

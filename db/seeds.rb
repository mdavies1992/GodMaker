require "open-uri"

# Clear it all out
puts "Clearing DB"
General.destroy_all
Artifact.destroy_all
Type.destroy_all
God.destroy_all
Domain.destroy_all
Alignment.destroy_all
YAlignment.destroy_all
XAlignment.destroy_all
puts "DB Cleared"

# Create Core Alignments
puts "-- Creating X-Axis alignments"
lawful_descriptors = ["Mechanical", "Orderly", "Systematic", "Meticulous", "Calculated", "Infallible", "Balanced", "Civil", "Fair", "Organized"];
lawful_titles = ["Warden", "Sentinel", "Lawmaker", "Lord", "Weaver", "Custodian", "Mastermind", "Architect", "Regulator", "Planner"];
lawful_tenets = ["Respect the authority of the Law be it your own or those of the lands you are in, and enforce it where possible.", "Create order in realms of chaos, and fight those or that which promotes disharmony.", "Always go about your tasks in an orderly, systematic fashion. There is always a 'right' way to do things.", "Routines are paramount, and once created must be maintained. Create a routine to assess and improve your other routines, as necessary.", "Scheduling is the meaning of existence, without them nothing would come to pass. Punctuality is a holy mission."];
lawful_themes = ["Justice", "Gears", "Constructs", "Money", "Contracts", "Rituals", "Time", "Courts", "Law", "Patience"];
XAlignment.create!(name: "Lawful", descriptors: lawful_descriptors, titles: lawful_titles, tenets: lawful_tenets, themes: lawful_themes )
puts "Lawful created"

neutral_descriptors = ["Balanced", "Shifting", "Thoughtful", "Harmonious", "Resolved", "Patient", "Reserved", "Quiet", "Calm", "Turning"];
neutral_titles = ["Seer", "Keeper", "Mediator", "Scale", "Point", "Watcher", "Observer", "Voice", "Reflection", "Thinker"];
neutral_tenets = ["Strive for thoughtfulness in any situation where you may act, or react, considering the world, yourself and those you may affect with your action or inaction.", "Try to gain independance from the sways of law and chaos, and know what is true to your own ways between these philosophies. Be neither restricted nor untethered.", "Consideration for those around you is a great and blessed thing. Try not to distrupt the world by your actions, and instead match its flow.", "Adaptability is a virtue you must uphold- be ready to adapt to a situation, and find a way to stay calm when things are chaotic- but also know when to act when things are stagnant.", "Respect the lands and places you find yourself in, and the customs of its people, but do not bend to them either."];
neutral_themes = ["Potential", "Indecision", "Games", "Sports", "Dance", "Patience", "Art", "Writing", "Creativity", "Adaption"];
XAlignment.create!(name: "Neutral", descriptors: neutral_descriptors, titles: neutral_titles, tenets: neutral_tenets, themes: neutral_themes )
puts "Neutral created"

chaos_descriptors = ["Spotaneous", "Unbound", "Untethered", "Rebellious", "Wild", "Anarchic", "Rising", "Mercurial", "Whimsical", "Wild"];
chaos_titles = ["Havoc", "Cascade", "Flux", "Chaos", "Discord", "Champion", "Tide", "Mayhem", "Force", "Disruptor"];
chaos_tenets = ["Freedom above all else, suffer not the chains of those who would put them on you or others.", "Plans are a comfort to those who wish to control the world, true, but they not for those with faith in chaos.", "Trust your inner gut and feelings above all else, no matter what others may tell you.", "Do not tell others how to act nor feel, and do not listen to those who tell you the same.", "Always strive to do something new, or go somewhere new, each and every day."];
chaos_themes = ["Luck", "Misfortune", "Gambling", "Confusion", "Revelry", "Inspiration", "Rebellion", "Bravery", "Chaos", "Celebration"];
XAlignment.create!(name: "Chaotic", descriptors: chaos_descriptors, titles: chaos_titles, tenets: chaos_tenets, themes: chaos_themes )
puts "Chaotic created"

puts "-- Creating Y-Axis alignments"
good_descriptors = ["Holy", "Divine", "Blessed", "Radiant", "Heavenly", "Angellic", "Celestial", "Great", "Wonderous", "Joyous"];
good_titles = ["Angel", "Exemplar", "Grace", "Host", "Spirit", "Champion", "Paragon", "Sentinel", "Good", "Pillar"];
good_tenets = ["Face down the forces of Evil, no matter where or what they are, or where they might be.", "Purify yourself, be selfless and true so that you may inspire those with good example.", "Do good deeds, inspire others and show praise to those whos acts are praiseworthy to encourage ever more.", "Conversion of those of evil or those on the path to evil to the side of good is paramount. Give mercy and understanding to those that need it most.", "Heal the lands where evil has taken root and corrupted, be it physical or spiritual."];
good_themes = ["Angels", "Celestials", "Patience", "Compassion", "Charity", "Patience", "Kindness", "Mercy", "Defence", "Forgiveness"];
YAlignment.create!(name: "Good", descriptors: good_descriptors, titles: good_titles, tenets: good_tenets, themes: good_themes )
puts "Good created"

neutral_descriptors = ["Ethereal", "Impartial", "Immutable", "Neutral", "Balanced", "Tempered", "Wise", "Cold", "Understanding", "Spiritual"];
neutral_titles = ["Overseer", "Keeper", "Force", "Observer", "Entity", "Scale", "Watcher", "One", "Teacher", "Duality"];
neutral_tenets = ["Understand balance, and strive to maintain equilibrium and harmony in the universe, acknowledging the necessity of both light and darkness, good and evil.", "Judge actions based on their consequences and impact on the balance of existence rather than on moral absolutes.", "Respect free will and recognize the sovereignty of individuals to make their own choices, understanding that freedom of choice is essential for growth and development.", "Focus on the self and your understanding of the self. Though moral decisions can be used to react and interact with the world around you, you must maintain neutrality within the self."];
neutral_themes = ["Philosophy", "Boredom", "Apathy", "Stars", "Souls", "Wisdom", "Listening", "Consideration", "Oppurtunity", "Rest"];
YAlignment.create!(name: "Neutral", descriptors: neutral_descriptors, titles: neutral_titles, tenets: neutral_tenets, themes: neutral_themes )
puts "Neutral created"

evil_descriptors = ["Evil", "Vile", "Nefarious", "Unholy", "Terrible", "Horrid", "Horrific", "Malevolent", "Malicious", "Cruel"];
evil_titles = ["Lord", "Master", "Shadow", "Malevolence", "Villain", "Disaster", "Dark", "Shadow", "Woe", "Blight"];
evil_tenets = ["Harness a ruthless ambition without limits, where the ends you desire justifiy any means you must take to get them.", "Corrupt the Innocent and untainted, and know the delight in turning them to darkness.", "Celebrate acts of cruelty, betrayal, and destruction as virtuous deeds that are the hallmark of evil.", "Eradicate Hope, and seek to extinguish it, goodness and faith, wherever they are found, leaving only despair in their wake."];
evil_themes = ["Fear", "Fiends", "Murder", "Corruption", "Greed", "Brutality", "Pride", "Power", "Envy", "Avarice"];
YAlignment.create!(name: "Evil", descriptors: evil_descriptors, titles: evil_titles, tenets: evil_tenets, themes: evil_themes )
puts "Evil created"

# Method-call the Core alignments
l = XAlignment.find_by(name: "Lawful")
xn = XAlignment.find_by(name: "Neutral")
c = XAlignment.find_by(name: "Chaotic")
g = YAlignment.find_by(name: "Good")
yn = YAlignment.find_by(name: "Neutral")
e = YAlignment.find_by(name: "Evil")


# Create Alignments
puts "--Creating Alignments"
lg_descriptors = ["Valiant", "Virtuous", "Honourable", "Righteous", "Steadfast", "High", "Holy", "Noble"];
lg_titles = ["Paragon", "Arbiter", "Keeper", "Pillar", "Justiciar", "Truth", "Champion", "Guardian"];
lg_tenets = ["Make sure the law helps the world it is in, enforce it but change it if it does not suit it's truest purpose.", "Temper thyself, keep patience until it is time to act, and wisdom to know when that is.", "Inspire unity for the greater good with those that would call you ally readily or in time, wherever you may be.", "Maintain and support equality for all good peoples and civilizations." ]
lg = Alignment.new(name: "Lawful Good", descriptors: lg_descriptors, titles: lg_titles, tenets: lg_tenets)
lg.x_alignment = l;
lg.y_alignment = g;
lg.save
puts "Lawful Good created"

ng_descriptors = ["Serene", "Compassionate", "Tranquil", "Wise", "Blessed", "Gentle", "Hallowed", "Benevolent"];
ng_titles = ["Guide", "Arbiter", "Steward", "Patron", "Protector", "Good", "Guardian", "Paragon"];
ng_tenets = ["Embody compassion, holding empathy, kindness, and generosity towards all living beings, regardless of their background or affiliation.", "Support personal development, education, and self-improvement, empowering individuals to reach their full potential and contribute positively to the world.", "Demonstrate the virtues of neutrality and goodness through actions, rather than dogma or imposition, inspiring others to embody these principles in their own lives.", "Respect Autonomy, and honor the individual autonomy and free will of sentient beings, allowing them to make their own choices and determine their own paths." ];
ng = Alignment.new(name: "Neutral Good", descriptors: ng_descriptors, titles: ng_titles, tenets: ng_tenets)
ng.x_alignment = xn;
ng.y_alignment = g;
ng.save
puts "Neutral Good created"

cg_descriptors = ["Hopeful", "Rising", "Free", "Liberating", "Changing", "Glorious", "Rising", "Revolutionary"];
cg_titles = ["Rebel", "Beacon", "Martyr", "Spark", "Liberator", "Beacon", "Guide", "Dawn"];
cg_tenets = ["Let not the tides of cruelest evil nor the stagnation of emotionless law stop you from doing good in this world.", "Stand against tyranny, oppression, and corruption wherever they may arise, and inspire others to do the same.", "Inspire rebellion where it is most needing,a nd be the spark that sets spirits ablaze in defiance against unjust laws, oppressive traditions, and societal norms that limit individual liberty and equality.", "Embrace change, unpredictability, and spontaneity, encouraging individuals to follow their instincts and pursue their own paths."];
cg = Alignment.new(name: "Chaotic Good", descriptors: cg_descriptors, titles: cg_titles, tenets: cg_tenets)
cg.x_alignment = c;
cg.y_alignment = g;
cg.save
puts "Chaotic Good created"

#--------

ln_descriptors = ["Stern", "Lawful", "Orderly", "Systematic", "Pragmatic", "Cold", "Precise", "Civil"];
ln_titles = ["Judge", "Advocate", "Arbiter", "Justicar", "Steward", "Overseer", "Leader", "Lawmaker"];
ln_tenets = ["Administer justice impartially, judging actions based on their adherence to established laws and regulations rather than personal feelings, moral leanings or biases.", "Strive to maintain order and stability in all aspects of existence, understanding that chaos and disorder can lead to suffering and conflict.", "Adhere to established procedures and protocols in all endeavors, recognizing the importance of consistency and predictability in decision-making.", "Honor contracts and agreements made in good faith, understanding that trust and reliability are essential for maintaining order in relationships and transactions."];
ln = Alignment.new(name: "Lawful Neutral", descriptors: ln_descriptors, titles: ln_titles, tenets: ln_tenets)
ln.x_alignment = l;
ln.y_alignment = yn;
ln.save
puts "Lawful Neutral created"

tn_descriptors = ["Cosmic", "Balanced", "Serene", "Harmonic", "Free", "Shifting", "Thoughtful", "Mysterious"];
tn_titles = ["Engima", "Mediator", "Incarnate", "Deity", "Lord", "Lady", "Ally", "Being"];
tn_tenets = ["Strive to keep balance in the universe and the natural equilibrium of the universe, recognizing the value of both order and chaos, good and evil.", "Seek Equilibrium, continuously striving to restore balance and harmony where it has been disrupted, acting as a mediator and peacemaker when necessary.", "Embrace change and adaptability as inherent aspects of the ever-evolving existence, remaining open to new possibilities and perspectives.", "Moderation in all things is paramount: Avoid extremes and excesses, seeking to find a middle ground that promotes stability and harmony."];
tn = Alignment.new(name: "True Neutral", descriptors: tn_descriptors, titles: tn_titles, tenets: tn_tenets)
tn.x_alignment = xn;
tn.y_alignment = yn;
tn.save
puts "True Neutral created"

cn_descriptors = ["Whimsical", "Mercurial", "Unpredictable", "Capricious", "Turbulent", "Erratic", "Unbound", "Shifting"];
cn_titles = ["Unknown", "Catalyst", "Liberty", "Rogue", "Chance", "Thief", "Trickster", "Reflection"];
cn_tenets = ["Embrace Freedom and advocate for individual freedom and autonomy, resisting any form of oppression or tyranny that restricts personal liberty.", "Embrace Change and the ever-changing nature of existence, promoting innovation, spontaneity, and evolution.", "Challenge Authority, question supposed order and challenge established authority and societal norms that inhibit personal expression and growth.", "Embrace chaos as a natural force of creativity and transformation, rejecting rigid structures and hierarchies that limit individual potential."];
cn = Alignment.new(name: "Chaotic Neutral", descriptors: cn_descriptors, titles: cn_titles, tenets: cn_tenets)
cn.x_alignment = c;
cn.y_alignment = yn;
cn.save
puts "Chaotic Neutral created"

#--------

le_descriptors = ["Tyrannical", "Supreme", "Cruel", "Diabolic", "Cunning", "Cruel", "Corrupt", "Dastardly"];
le_titles = ["Overlord", "Master", "Dread", "Enforcer", "Oppressor", "Tyrant", "Sovereign", "Custodian"];
le_tenets = ["Establish and maintain absolute authority over all aspects of existence, enforcing obedience through fear and coercion for yourself and/or your god.", "Might Makes Right: Embrace the belief that power and strength are the ultimate virtues, and that those who are strong have the right to rule over the weak", "Law is a tool of oppression and you should strive to manipulate laws and regulations to serve personal interests and suppress dissent, using legal means to justify immoral actions.", "Establish rigid hierarchies and systems of order, ensuring that all individuals know their place and submit to those above them."];
le = Alignment.new(name: "Lawful Evil", descriptors: le_descriptors, titles: le_titles, tenets: le_tenets)
le.x_alignment = l;
le.y_alignment = e;
le.save
puts "Lawful Evil created"

ne_descriptors = ["Wretched", "Dreadful", "Vile", "Sinister", "Sadistic", "Wicked", "Venomous", "Cold-hearted"];
ne_titles = ["Shadow", "Schemer", "Bane", "Oppurtunist", "Blight", "Stalker", "Fang", "Blade"];
ne_tenets = ["The ends Justify the Means and any action, no matter how cruel or immoral, is by divine mandate if it serves the ultimate goal of personal power and domination.", "Prioritize personal survival and advancement above all else, ensuring that one's own needs are met before considering the needs of others.", "Exploit the weaknesses of others to gain an advantage, viewing compassion and mercy as opportunities for manipulation.", "Depend on one's own abilities and resources rather than relying on the assistance or goodwill of others, viewing alliances as temporary and expendable."];
ne = Alignment.new(name: "Neutral Evil", descriptors: ne_descriptors, titles: ne_titles, tenets: ne_tenets)
ne.x_alignment = xn;
ne.y_alignment = e;
ne.save
puts "Neutral Evil created"

ce_descriptors = ["Ruinous", "Brutal", "Destructive", "Hungering", "Sadistic", "Abyssal", "Savage", "Heinous"];
ce_titles = ["Havoc", "Harbinger", "Carnage", "Scourge", "Betrayer", "Maw", "Traitor", "Frenzy"];
ce_tenets = ["Use manipulation, deception, and propaganda to maintain control over the masses and further personal agendas.", "Reject moral codes and ethical standards as arbitrary restrictions imposed by society, embracing personal freedom and autonomy above all else.", "Delight in causing destruction and suffering, reveling in the chaos and misery that result from one's actions.", "Deliberately sow discord and conflict among others, enjoying the chaos and turmoil that result from their strife."];
ce = Alignment.new(name: "Chaotic Evil", descriptors: ce_descriptors, titles: ce_titles, tenets: ce_tenets)
ce.x_alignment = c;
ce.y_alignment = e;
ce.save
puts "Chaotic Evil created"


# Create Domains
puts "-- Creating Domains"
life_descriptors = ["Healing", "Giving", "Helping", "Aiding", "Flourishing", "Mending", "Merciful", "Kind", "Joyful", "Spiritual", "Returning", "Reviving", "Joyous", "Rising", "Calm", "Measured", "Knowing", "Blessed", "Resilient", "Grateful"];
life_titles = ["Hand", "Guide", "Savior", "Touch", "Healer", "Salvation", "Caregiver", "Lifegiver", "Reprieve", "Calm", "Vessel", "Spirit", "Start", "Mirth", "Warden", "Saint", "Lifebringer", "Nurturer", "Protector", "Genesis"];
life_tenets = ["Your job as a healer is never-ending, your mission to seek out those that need your skills.", "Learn of medicine and add to the knowledge of the faithful, so that you may improve your own work and the works of others in time.", "Once you complete treatment of the symptoms of those you heal, seek the truest cure to those ailments where you can, be it in the one healed or the world they come from.", "You must alot time to healing as charitable assistance, wherever possible and practical.", "Observe the medical world an discoveries that are made wherever they may occur, and study the worlds many ailments, rots and diseases. An enemy understood is an enemy that is nearing defeat.","Do not injure unless you know and are ready to provide the cure to that injury.", "Foster new life where possible, and promote the creation and protection of new life in the world.", "Teach others how to heal, and in time you may heal the world", "Treatment of the body is quite obvious, but do not neglect treatment of the mind and spirit also. Communicate and strive for understanding of one another, and do not flee from connection.", "Your body is a temple in itself- treat it well and right, and understand it all the more when it is in need of repair or improvement." ];
life_themes = ["Healing", "Breath", "Blood", "Medicine", "Disease", "Family", "Doctors", "Injury", "Revival", "Pain", "Celebration", "Compassion", "Alchemy", "Potions", "Food", "Rest", "Bandages", "Sanctuary", "Calm", "Youth"];
lifea1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"gains a 1d4 bonus to any Wisdom (Medicine) checks they make.",
"has advantage on saving throws to resist Poison and Disease.",
"can cast the Resistance cantrip using the artifact as a spellcasting focus.",
"can cast the Word of Radiance cantrip using the artifact as a spellcasting focus.",
"can cast Cure Wounds as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down), after which you must complete a long rest before you can do so again."]
lifea2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the spell Aura of Vitality using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Beacon of Hope using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"gain a pool of healing, equal to three times your character level. As an action, you may restore missing hit points to a creature you can touch, subtracting from this pool as you wish. Your pool is restored to its maximum value upon completition of a long rest."]
lifea2w = ["the Artifact deals an additional 4 (1d6) Radiant damage on hit.",
"can, when you hit with this weapon, send a bolt of healing energy to yourself or an ally within 30ft. of the struck target. The bolt heals a creature for up to 1d8 missing hit points. You may use this ability a number of times equal to your proficiency bonus, regaining any expended uses upon completion of a long rest."]
lifea2a = ["gains, whilst attuned to this Artifact, an additional 2 maximum hit points per character level they have.",
"can cast the spell Warding Bond using the artifact as a spellcasting focus without using a spell slot.any When cast in this way, you do not require material components and neither you or your target need to be holding any materials required by the spell normally. Once you have used this ability, you cannot do so again until you complete a long rest."]
lifea3 = ["can, as a reaction to yourself or an ally you can see within 60ft of you being subject to a successful attack (but before damage is rolled). You or that ally gains resistance to the damage dealt by that attack. You may use this ability a number of times equal to proficiency bonus, regaining any expended uses on completion of a long rest.",
"can cast the spell Raise Dead using the artifact as a spellcasting focus without using a spell slot, or requiring any material components. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Mass Cure Wounds using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest."]
lifea3w = ["can regain missing hit points equal to half the damage dealt by this weapon (rounded down). "]
lifea3a = ["gain a 20ft. life-giving aura. The attuned user and allies that begin their turn within this aura that have half or less of their maximum hit points regain up to 1d10 missing hit points."]
lifeq2 = ["You must gather 500gp of reagents and travel to a location rife with plague or sickness to conduct a healing ritual of GODNAME, summoning forth an avatar of that sickness (CR 6), which you must defeat to cleanse things for good.",
"You must travel to a shrine or temple of GODNAME and speak to the faithful there, such as a cleric or priest. You must drink a concotion and infect yourself with a diesease that will wrack your body with pain and ailment (with effects at your DM's discretion), and suffer that illness for a week, so that you might appreciate your life and the suffering felt by others all the more. Actions to evade this suffeirng and cheat this lesson may be looked at in disdain by the healing deity, and may extend or fail this quest."]
lifeq3 = ["As of starting this quest, through your own actions (which can be abilities, items, or otherwise) you must heal 1000 total missing hit points to friendly, willing creatures."]
Domain.create!(name: "Life", descriptors: life_descriptors, titles: life_titles, tenets: life_tenets, themes: life_themes, ability_one: lifea1, ability_two: lifea2, ability_two_weapon: lifea2w, ability_two_armor: lifea2a, ability_three: lifea3,  ability_three_weapon: lifea3w, ability_three_armor: lifea3a, quest_two: lifeq2, quest_three: lifeq3 )
puts "Life created"

arcana_descriptors = ["Magical", "Mystical", "Enchanting", "Great", "All-knowing", "Mysterious", "Boundless", "Wise", "Otherworldly", "Cosmic", "Ancient", "Powerful", "Cunning", "Learned", "Potent", "Esoteric", "Eldritch", "Enigmatic", "Shifting", "Roiling"];
arcana_titles = ["Arcane", "Sage", "Diviner", "Seer", "Diviner", "Master", "Weaver", "Mage", "Scrollmaster", "Teacher", "Entity", "Guardian", "Binder", "Custodian", "Sigil", "Runecarver", "Genesis", "Lord", "Lady", "Magus", "Warden"];
arcana_tenets = ["Embrace the pursuit of arcane wisdom and understanding. Encourage the study of magic in all its forms.", "Safeguard magical knowledge from those who would seek to disrupt or abuse it.", "Stand against those who would seek to suppress or extinguish magic from the world. Protect magical knowledge and artifacts from destruction or misuse.", "Encourage innovation and experimentation within the bounds of your gods ethical guidelines, if any. Inspire creativity and ingenuity in the development of new spells and magical techniques.", "Every month, you must sacrifice a scroll of magical power you have found or written, via ritual or donation to the faith's order.", "Acknowledge and respect the origins of magic, whether it be through divine providence, natural forces, or cosmic energies. Treat the source of magic with reverence and gratitude.", "It is your divinely appointed task to create at least one new spell or piece of magical craft, or to rediscover such a wonder.", "Safeguard the secrets of magic from those who would misuse or exploit them for nefarious purposes. Exercise discretion in sharing arcane knowledge and only reveal it to those deemed worthy and trustworthy.", "Cultivate a spirit of curiosity and exploration, delving into the mysteries of magic with an open mind and a thirst for discovery. Remain ever-curious and unafraid to explore the unknown.", "Work towards uniting practitioners of magic, regardless of their traditions or beliefs. Foster cooperation and understanding among magical communities to strengthen the bonds of arcane knowledge."];
arcana_themes = ["Abjuration", "Illusion", "Necromancy", "Conjuration", "Evocation", "Divination", "Transmutation", "Enchantment", "Wizards", "Rituals", "Spellbooks", "Wands", "Orbs", "Crystals", "Portals", "Elementals", "Abberations", "Runes", "Sorcery", "Pacts"]
arcanaa1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"gains a 1d4 bonus to any Intelligence (Arcana) checks they make.",
"can cast the spell Detect Magic using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the Mage Hand cantrip using the artifact as a spellcasting focus.",
"can cast the Prestigitation cantrip using the artifact as a spellcasting focus.",
"can cast the spell Magic Missile using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again."]
arcanaa2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can, as a reaction to an ally within 60ft. you casting a spell, bolster it with divine arcane magic. If that spell requires an attack roll, it is done with advantage. If it requires a saving throw, the Save DC is increased by 2. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Slow using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest."]
arcanaa2w = ["the Artifact deals an additional 4 (1d6) Force damage on hit.",
"can cast the spell Dispel Magic using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest."]
arcanaa2a = ["has advantage on saving throws against spells and magical effects",
"can cast the spell Shield using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to your proficiency bonus before you must complete a long rest before you can do so again."]
arcanaa3 = ["can, once per day, choose and immediately cast any spell of 3rd level or lower that has a casting time of one action. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Bigby's Hand using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Summon Draconic Spirit using the artifact as a spellcasting focus without using a spell slot, and not requiring any material components. Once you have used this ability, you cannot do so again until you complete a long rest."]
arcanaa3w = ["can cast the spell Counterspell using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again. When you cast Counterspell in this way, if the spell is stopped the caster of that spell takes 2d10 force damage."]
arcanaa3a = ["gains resistance to damage dealt by spells."]
arcanaq2 = ["You must find and sacrifice scrolls of magic that have spells equalling a total of spell level 10 to GODNAME at one of their hallowed grounds, such as a temple or shrine. (Cantrips count as spell level 0.5)",
"You must travel to a location suffused wild with magical energies, and conduct an arcane ritual to GODNAME that summons a elemental embodiment of those energies (CR 6). Once defeated, the elemental will be absorbed into the Artifact, bolstering its power."]
arcanaq3 = ["You must find and defeat a powerful spellcaster, (Min CR 13, such as an evil Archmage or Lich) and prove the arcane might of GODNAME on their behalf."]
Domain.create!(name: "Arcana", descriptors: arcana_descriptors, titles: arcana_titles, tenets: arcana_tenets, themes: arcana_themes, ability_one: arcanaa1, ability_two: arcanaa2, ability_two_weapon: arcanaa2w, ability_two_armor: arcanaa2a, ability_three: arcanaa3,  ability_three_weapon: arcanaa3w, ability_three_armor: arcanaa3a, quest_two: arcanaq2, quest_three: arcanaq3  )
puts "Arcana created"

war_descriptors = ["Supreme", "Bloodthirsty", "Undefeated", "Iron", "Mighty", "Valiant", "Indomitable", "Unyielding", "Relentless", "Proud", "Towering", "Triumphant", "Skilled", "Wrathful", "Deadly", "Screaming", "Striking", "Barbaric", "Unstoppable", "Esteemed"];
war_titles = ["Warlord", "Fury", "General", "Vanquisher", "Marshal", "Warrior", "Lord", "Fury", "Sentinel", "Conquerer", "Avatar", "Master", "Colossus", "Hellion", "Blade", "Bannerlord", "Breaker", "Juggernaut", "Force", "Champion"];
war_tenets = ["Uphold honor and integrity on the battlefield. Show respect for worthy opponents and face them will all your own skill and power, for to not do so is disrespect most shameful.", "Embrace discipline and training to hone your skills as a warrior and gain strength wherever you can, whenever you can. Strive for excellence in both mind and body.", "Forge bonds of camaraderie and loyalty with your fellow warriors. Together, stand as an indomitable force against adversity.", "Pay tribute to those who have fallen in battle. Honor their memory and ensure that their sacrifices are never forgotten through rituals or keepsakes.", "Fight not for personal glory alone, but for a greater cause or ideal. Dedicate your strength to the defense of justice, freedom, or the protection of your people.", "Pursue victory with unwavering determination. Spare no effort in achieving triumph on the battlefield.", "Be flexible and adaptable in the face of adversity. Embrace change and innovation to overcome challenges on the battlefield when needs arise in order to secure victory.", "Honor the spoils of victory, for that which has been taken through battle must be respected, and to act against those that have earned that right, or steal their spoils, is shameful.", "Maintence of your weapons and armour, and those of your allies, is a divine duty. A well-sharpened blade is a blessed blade.", "A quick prayer must be made before each battle you are involved in, if possible, or after each battle if not."];
war_themes = ["Strategy", "Maps", "Negotation", "Military", "Honor", "Might", "Training", "Combat", "Anger", "Defense", "Victory", "Defeat", "Surprise", "Logistics", "Morale", "Chanting", "Bloodlust", "Barbarians", "Knights", "Archers"];
wara1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"gains a bonus to their initiative rolls equal to their proficiency bonus.",
"can cast the spell Spiritual Weapon using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the Sword Burst cantrip using the artifact as a spellcasting focus.",
"can cast the Blade Ward cantrip using the artifact as a spellcasting focus.",
"can cast the spell Shield of Faith using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again."]
wara2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the spell Haste using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Crusader's Mantle using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"has a number of d6s equal to your proficiency bonus. Whenever you or an ally within 30ft of you fails an attack roll or saving throw, you may expend one of these die and roll it, adding to that roll a bonus equal to the result, potentially turning it into a success. You regain any expended die upon completing a long rest."]
wara2w = ["the Artifact deals an additional 4 (1d6) Force damage on hit.",
"can, when attacking with this weapon, treat a 19 when rolling to hit as a critical hit. If you already possess a similar ability or feature, increase your critical hit range by 1 instead."]
wara2a = ["gains, whilst attuned to this Artifact, an additional 2 maximum hit points per character level they have.",
"can, when taking damage from an attack or effect of an enemy creature, immediately deal 2d6 radiant damage to that creature. You can use this ability a number of times equal to half your proficiency bonus (rounded down), regaining any expended uses upon completion of a long rest."]
wara3 = ["can, whenever you roll for initiative and are not surprised, let out a divine war-cry before battle begins. When you do so, you and your allies within 120ft. of you immediately gain 1d12+4 tempoary hit points.",
"can cast the spell Conjure Volley using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can, as an action, heal yourself and allies within 30ft of you for up to 2d12 missing hit points, as well as granting each healed character inspiration if they don't already have it. Once you use this ability, you cannot use it again until you complete a long rest."]
wara3w = ["may roll with advantage when attacking with this weapon."]
wara3a = ["can, whenever you take damage, afterwards gain resistance to that damage type until the end of your next turn."]
warq2 = ["You must gather reagents of 500gp and travel to a sacred site of GODNAME, such as their temple or a blessed battlefield. There, you will conduct a ritual that will summon forth a phantasmal duplicate of yourself, whom you must defeat in a one on one duel to the death. Outside intervention or assistance is prohibited, and may earn you the scorn of the deity of war.",
"As of starting this quest, you must deal a combined total of 300 damage to noteworthy hostile creatures you face in your travels. Creatures that pose no threat, or trying to cheat this quest, may earn you scorn from GODNAME, and either not be counted towards this total or even outright fail you in this quest for cowardice."]
warq3 = ["You must directly contribute to the deaths of scores of creatures, whose CR totals 100 combined. This count begins once you are eligible for this quest (and does not count kills beforehand) and GODNAME may choose to not count kills as they see fit, should it displease them."]
Domain.create!(name: "War", descriptors: war_descriptors, titles: war_titles, tenets: war_tenets, themes: war_themes, ability_one: wara1, ability_two: wara2, ability_two_weapon: wara2w, ability_two_armor: wara2a, ability_three: wara3,  ability_three_weapon: wara3w, ability_three_armor: wara3a, quest_two: warq2, quest_three: warq3)
puts "War created"

tempest_descriptors = ["Sparking", "Blustering", "Thunderous", "Wrathful", "Ocean's", "Sea's", "Crackling", "Roiling", "Crushing", "Cylconic", "Menacing", "Fierce", "Unyielding", "Elemental", "Formidable", "Turbulent", "Imposing", "Mercurial", "Tranquil", "Booming"];
tempest_titles = ["Storm", "Gale", "Wind", "Lightning", "Zenith", "Depths", "Sovereign", "Wave", "Roar", "Conductor", "Tempest", "Bringer", "Rider", "Cyclone", "Arc", "Flash", "Crash", "Echo", "Heart", "End"];
tempest_tenets = ["Before any travel is made over a large body of water, an offering to your god must be made.","Storms are holy events to commune with your god, and must be aknowledged through prayer or ritual.", "At least once in your life, you must allow yourself to be struck by lightning as a test of body and faith.", "Embrace the primordial forces of nature, for within them lies the potential for creation and renewal. Embrace the storms as agents of change and transformation.", "Protect the skies and the creatures that dwell within them. Act as a guardian against threats to aerial life and ensure the safety of birds, flying creatures, and other inhabitants of the skies.", "Inspire creativity and innovation through the tempest's dynamic energy. Encourage the pursuit of new ideas and ventures, empowering individuals to harness the storm's power for innovation.", "Embrace the tempest as a purifying force that cleanses and renews. See destruction as a necessary precursor to rebirth and regeneration, clearing the path for new growth and possibility.", "Exercise restraint in the use of destructive power. Channel the fury of the tempest with wisdom and restraint, avoiding unnecessary destruction and collateral damage.", "The oceans depths are a divine realm of your god, and should be respected as such.", "You must conduct a prayer of thanks and to ask permission before you eat any food that has come from a body of water."];
tempest_themes = ["Storms", "Lightning", "Thunder", "Oceans", "Fish", "Birds", "Ships", "Fishing", "Clouds", "Tornados", "Sandstorms", "Hurricanes", "Inspiration", "Creativity", "Dust", "Sharks", "Whales", "Octopi", "Krakens", "Coral"];
tempesta1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"can speak to and understand the speech of Aquatic Beasts and monsters.",
"always know which way is North, what direction the wind is blowing, and what the weather will be like in your current region the following day.",
"can cast the Gust cantrip using the artifact as a spellcasting focus.",
"can cast the Shocking Grasp cantrip using the artifact as a spellcasting focus.",
"can cast the spell Thunderwave using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again."]
tempesta2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the spell Thunder Step using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the spell Lightning Bolt using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest."]
tempesta2w = ["the Artifact deals an additional 4 (1d6) Lightning damage on hit.",
"can, as an action, transform yourself into a living bolt of lightning. For the remainder of your turn, you gain the effects of the dash and disengage actions and you may move through enemy spaces. The first time you move through each enemy creature, they take 1d12 lightning damage. Once you have used this ability, you cannot do so again until you complete a long rest."]
tempesta2a = ["gains Resistance to Lightning and Thunder damage whilst attuned to this Artifact.",
"can, as a reaction to recieving damage from a creature within 60ft. of you that you can see, force that creature to make a constitution saving throw against your Artifact Save DC. On failure, that creature takes 4d8 thunder damage and can be moved up to 10ft. in a straight line towards or away from the user (your choice). Once you have used this ability, you may not do so again until you complete a long rest."]
tempesta3 = ["gains a 30ft. Fly speed, or if they already possess a fly speed it increases by 30ft. Additionally, they can hover in place freely and are immune to the prone condition.",
"can cast the spell Maelstrom using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can as an action throw tempest bolts at up to 6 creatures (only one bolt per creature) they can see within 100ft. of them they can see. When an enemy is targeted by a bolt, they must make a dexterity saving throw against the Artifact Save DC, taking 5d8 lightning damage or half as much on a success. When an ally is targeted by a bolt they are infused with energy, gaining 1d12+4 temproary hit points and inspiration "]
tempesta3w = ["can cast the spell Chain Lightning using the artifact as a spellcasting focus without using a spell slot. Once you have used this ability, you cannot do so again until you complete a long rest."]
tempesta3a = ["can, as an action, summon forth divine winds and become the eye of the storm. For the next minute, or until the attuned user uses a bonus action to end this effect early, they have a 30ft. aura that extends from them, Enemies that start their turn in this aura immediately take 1d8 bludgeoning damage from the turbulent winds, and allies gain the benefit of the dash action immediately. Additionally, any ranged attacks that target creatures in this aura, or would pass through the area of this aura to target a creature, have disadvantage. Once this ability is used, the user cannot do so again until they complete a long rest."]
tempestq2 = ["As of starting this quest, you must sail across the open sea or bodies of water for a total of 7 days (You may split this time among multiple journeys). However, before each voyage and each evening during an ocean voyage, you must make a 10 minute prayer to GODNAME.", "You must collect reagents worth 500gp to conduct a ritual that will summon a living storm (An air elemental, CR 6) which you must defeat in order to empower your weapon."]
tempestq3 = ["You must defeat a Kraken and bathe your artifact in its electrified blood."]
Domain.create!(name: "Tempest", descriptors: tempest_descriptors, titles: tempest_titles, tenets: tempest_tenets, themes: tempest_themes, ability_one: tempesta1, ability_two: tempesta2, ability_two_weapon: tempesta2w, ability_two_armor: tempesta2a, ability_three: tempesta3,  ability_three_weapon: tempesta3w, ability_three_armor: tempesta3a, quest_two: tempestq2, quest_three: tempestq3 )
puts "Tempest created"

death_descriptors = ["Reaping", "Grim", "Ghostly", "Necrotic", "Killing", "Haunting", "Undying", "Creeping", "Eternal", "Accursed", "Quiet", "Silent", "Whispering", "Fearful", "Rotting", "Final", "Waking", "Restful", "Dark", "Eternal"];
death_titles = ["Death", "Toll", "Skull", "End", "Tomblord", "Silence", "Veil", "Chill", "Dusk", "Night", "Touch", "Dread", "Skull", "Hand", "Shadow", "Shepherd", "Speaker", "Guide", "Lady", "Lord"];
death_tenets = ["As a divinely appointed task, all creatures you directly kill must be recorded, listed by name if known or description if a name is unknown.", "Death is an essential part of the natural order. Life must give way to death so that new life can emerge. Respect and honor the cycle of birth, life, death, and rebirth.", "Death knows no favorites. All beings, regardless of status, wealth, or power, must face their mortality. Treat all souls equally in their journey beyond.", "Understand that death is not an end but a transition. Embrace the finite nature of existence and find meaning in the fleeting moments of life.", "Offer mercy and compassion to those who suffer. Sometimes, death can be a release from pain and suffering. Show kindness and empathy in the act of ushering souls into the afterlife.", "Death reveals the ultimate truth of existence. Seek to understand and accept the inevitable truth of mortality, and help others confront their fears of death.", "Safeguard the souls of the departed and guide them to their rightful place in the afterlife. Ensure that no soul is lost or stranded in the limbo between worlds, or if needed left stranded and without use.", "Necromancy and the creation of undead creatures is a blessed act, and to be pursued or at least respected as a divine craft. ", "Preserve the memories of those who have passed on, ensuring that their legacies endure beyond their physical lives. ", "Cut through illusions and falsehoods to reveal the truth of existence. Challenge misconceptions and delusions about death, guiding beings toward a deeper understanding of the ultimate reality."];
death_themes = ["Skeletons", "Zombies", "Ghosts", "Decay", "Disease", "Vampires", "Funerals", "Slaughter", "Ending", "Tragedy", "Fear", "Sacrifice", "Silence", "Plagues", "Paranoia", "Dread", "Old age", "Stillness", "Necromancy", "Murder"];
deatha1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"is uneffected by Difficult terrain.",
"gains 30ft of Darkvision. If the attuned character already has Darkvision, its range increases by 30ft.",
"gains immunity to the Frightened condition, and your skin becomes more sallow and corpse-like.",
"can cast the Chill touch cantrip using the artifact as a spellcasting focus.",
"can sense the presence and location of corpses within 30ft. of you, whilst attuned. Undead creatures can also understand your speech (but may not be able to reply, but if they can you can understand them.)",
"can cast Inflict Wounds as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down). The spell attack modifier for this artifacts spells and abilities is +5, and any Saving DCs are 13."]
deatha2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the Summon Undead spell without using a spell slot through this Artifact, without need of any components.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"the attuned user of the Artifact and allies within 20ft of them have advantage on saving throws against the spells and abilities of undead creatures. ",
"can, as an action, summon a giant spectral or skeletal hand that erupts from the ground at the feet of a targeted creature that you can see and is within 60ft. of you, which attempts to grasp them tightly. They must immediately make a Strength (Athletics) check against this Artifacts Save DC, or immediately become grappled and restrained by the hand for the next minute. At the start of a restrained creatures turns, they immediately take 2d8 bludgeoning damage from the crushing grip of the hand. They or an ally within 5ft. of them may use an action to make another Strength (Athletics) check against the Artifacts DC to free them, potentially ending the effect early on a success."]
deatha2w = ["the Artifact deals an additional 4 (1d6) Necrotic damage on hit.",
"can cast the spell Spirit Shroud through the Artifact, without using a spell slot. Once cast in this way, it cannot do so again until completing a Long Rest."]
deatha2a = ["gains Resistance to Necrotic damage whilst attuned to this Artifact.",
"gains advantage on death saving throws, and they can treat rolls of 18 and 19 as if they had rolled a critical success for these death saving throws."]
deatha3 = ["as an action, an attuned user may target a creature and condemn them to death, uttering a divine command. If that creature can hear you, and has 60 hit points or less, it immediately dies. Once you have used this ability, you cannot do so again until you have completed a Long Rest.",
"can cast the spell Negative Energy Flood without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn. The spell attack modifier for this artifacts spells and abilities is +11, and any Saving DCs are 19. ",
"can cast the spell Danse Macabre without using a spell slot through this Artifact, and can summon ethereal corpses in unoccupied spaces you can see within 30ft. as part of casting this spell in this way (which can immediately be targeted by Danse Macabre to animate).  Once cast in this way, you cannot do again until you complete a Long Rest."]
deatha3w = ["as a bonus action, you can target up to 3 creatures you can see that are (each) within 60ft. of you, encasing them in a curse of death. Until the end of your next turn, any attacks against those targets have advantage, and they cannot benefit from any resistances or immunities they may have to damage you or your allies deal. Once you have used this ability, you may not use it again until you complete a long rest."]
deatha3a = ["regains up to 1d12 missing hit points whenever a creature dies within 30ft. of them."]
deathq2 = ["You must travel to a shrine or temple of GODNAME and preside over a ritual of death, which includes defeating and killing a creature that ritual summons (CR 6, likely an undead) and drawing the sigill or mark of the deity upon your body in its cremated ashes, which leaves a permanent and lingering mark.",
"You must create a vessel of death and animate in a ritual prayer to GODNAME, using reagents equalling 500gp (this requires a Intelligence (Religion) check, DC 15). Once animated, this vessel will guide you to a hidden location, where you must place the Artifact to absorb the deathly energies it requires to become empowered.",
"While attuned, you must experience death first-hand and speak with GODNAME in the Afterlife. "]
deathq3 = ["You must directly contribute to the deaths of scores of creatures, whose CR totals 100 combined. This count begins once you are eligible for this quest (and does not count kills beforehand) and GODNAME may choose to not count kills as they see fit, should it displease them."]
Domain.create!(name: "Death", descriptors: death_descriptors, titles: death_titles, tenets: death_tenets, themes: death_themes, ability_one: deatha1, ability_two: deatha2, ability_two_weapon: deatha2w, ability_two_armor: deatha2a, ability_three: deatha3,  ability_three_weapon: deatha3w, ability_three_armor: deatha3a, quest_two: deathq2, quest_three: deathq3)
puts "Death created"

trickery_descriptors = ["Mercurial", "Duplicitous", "Two-faced", "Dishonest", "Mysterious", "Mischievious", "Shrouded", "Prowling", "Shadowy", "Subtle", "Wily", "Sly", "Rogue", "Skulking", "Stalking", "Invisible", "Leading", "Perplexing", "Elusive", "Whimsical"];
trickery_titles = ["Trickster", "Mirror", "Liar", "Enigma", "Illusion", "Mirage", "Jester", "Conjurer", "Phantasm", "Deceiver", "Manipulator", "Wit", "Master", "Mistress", "Thief", "Shadow", "Paradox", "Mist", "Doubt", "Reflection"];
trickery_tenets = ["Embrace the art of deception as a fundamental aspect of existence. Recognize the power of illusion and subterfuge in shaping perception and manipulating reality.", "Cultivate skill in the arts of trickery and manipulation. Hone your ability to deceive and outwit adversaries, using guile and cunning to achieve your goals.", "Embrace trickery and unpredictability as catalysts for change and transformation. Revel in the uncertainty of the unknown, using it to sow confusion and disrupt the status quo.", "Be adaptable and versatile in your approach to challenges. Learn to think on your feet and improvise in the face of adversity, seizing opportunities as they arise.", "Use illusion and trickery as tools for liberation and freedom. Recognize that reality is subjective and mutable, and use the power of illusion to break free from constraints and limitations.", "Embrace unpredictability as a virtue to be cherished. Reject rigidity and predictability, and embrace the fluidity of change and transformation.", "Maintain balance in your relationships and alliances. Recognize that betrayal can be a double-edged sword, and strive to navigate the complexities of loyalty and betrayal with finesse and discretion.", "Acting and performance are divine skills to be honed, and as talents to be recognized. At least once, at some point in your life, you must perform in a publically accessible play.", "Embrace the complexity of morality and ethics. Understand that right and wrong are not always clear-cut and that actions must be evaluated in context.", "Find harmony amidst chaos and unpredictability. Embrace the ebb and flow of change, using trickery to navigate the turbulent currents of existence."];
trickery_themes = ["Lies", "Pranks", "Drama", "Illusions", "Mirrors", "Jesters", "Stealth", "Mirages", "Surprise", "Betrayal", "Cunning", "Doubt", "Transformation", "Stalking", "Spies", "Thievery", "Masks", "Duality", "Gambling", "Riddles"];
trickerya1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"can cast the spell Invisibility without using a spell slot through this Artifact. Once cast in this way, it cannot do so again until the next Dawn.",
"has advantage on saving throws against spells and effects that would charm them.",
"can cast the Minor Illusion cantrip using the artifact as a spellcasting focus.",
"can cast the Vicious Mockery cantrip using the artifact as a spellcasting focus.",
"can cast the spell Disguise Self using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again."]
trickerya2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the spell Major Image without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn.",
"can cast the spell Antagonize without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn. ",
"can cast the spell Misty Step using the artifact as a spellcasting focus without using a spell slot. You may do this a number of times equal to half your proficiency bonus (rounded down) before you must complete a long rest before you can do so again."]
trickerya2w = ["the Artifact deals an additional 4 (1d6) Psychic damage on hit.",
"can, whenever you hit a creature, reduce its AC by 1. This effect can stack up to five times, and if you don't hit that creature during one of your turns any AC reduction on it ends."]
trickerya2a = ["gains Resistance to Psychic damage whilst attuned to this Artifact.",
"can cast the spell Blink without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn. "]
trickerya3 = ["gains Truesight 60ft. and other creatures that have Truesight are unable to see their true form or other details than what they wish to present. Additionally, their mind and thoughts cannot be read unless they wish it to be.",
"can cast the spell Dominate Person without using a spell slot through this Artifact. Once cast in this way, it cannot do so again until the next Dawn.",
"can, as an action, split yourself into three phantasmal clones that cannot attack or take reactions, and have 1 hit point each, and has an AC equal to your current AC. Each clone immediately takes a turn of their own, and has the benefits of the dash and disengage actions. At the start of your next turn, you may choose one clone out of however many remain, and reappear in that space. Any remaining clones disappear, and if only one clone remains at any time before this, you immediately reappear in that remaining clones space. Once you have used this ability, you cannot do so again until you complete a long rest."]
trickerya3w = ["may, upon hitting a creature with this artifact, choose to make that hit a critical hit instead. Once you have used this ability, you may not do so again until you complete a long rest."]
trickerya3a = ["can, when they fail a saving throw, choose to succeed instead. They may do this a number of times equal to half their proficiency bonus (rounded down), regaining any expended uses upon completion of a Long rest."]
trickeryq2 = ["You must gather reagents of 500gp and travel to a sacred site of GODNAME, such as their temple or a blessed battlefield. There, you will conduct a ritual that will summon forth a phantasmal duplicate of yourself, whom you must defeat in a one on one duel to the death. Outside intervention or assistance is prohibited (though you may use any tactics or underhand strategies of your own design), and may earn you the scorn of the deity of trickery should they notice.",
"You must travel to at least 3 locations that are relevant or blessed by GODNAME. At each, there is a challenge or puzzle you must complete."]
trickeryq3 = ["You must steal an item worth a small fortune (min. 5,000GP) and present it to a shrine or temple of GODNAME as an offering, who may decline it if your tale of trickery and subtlety as to how you acquired it does not impress them."]
Domain.create!(name: "Trickery", descriptors: trickery_descriptors, titles: trickery_titles, tenets: trickery_tenets, themes:trickery_themes, ability_one: trickerya1, ability_two: trickerya2, ability_two_weapon: trickerya2w, ability_two_armor: trickerya2a, ability_three: trickerya3,  ability_three_weapon: trickerya3w, ability_three_armor: trickerya3a, quest_two: trickeryq2, quest_three: trickeryq3 )
puts "Trickery created"

nature_descriptors = ["Forest's", "Green", "Apex", "Nature's", "Earthsong", "Ferocious", "Druidic", "Harmonious", "Wild", "Untamed", "Savage", "Blooming", "Enchanting", "Falling", "Waning", "Creeping", "Stalking", "Soaring", "Capricious", "Sturdy"];
nature_titles = ["Shepherd", "Beast", "Essence", "Tamer", "Hunter", "Sentinel", "Predator", "Warden", "Chorus", "Watcher", "Sovereign", "Lady", "Lord", "Arbiter", "Spirit", "Vine", "Overseer", "Balance", "Patron", "Bringer"];
nature_tenets = ["Maintain harmony with the natural world, recognizing the interconnectedness of all living beings and ecosystems. Respect the balance of nature and strive to live in harmony with it.", "Act as a steward of the earth, safeguarding its beauty and diversity for future generations. Protect and nurture the natural world, ensuring its vitality and resilience.", "Honor and respect all forms of life, from the smallest microorganism to the largest sentient being.", "Offer guidance and protection to those who venture into the wilderness. Provide wisdom and strength to navigate the challenges of the natural world.", "Seek communion with nature through contemplation, meditation, and ritual. Connect with the rhythms of the earth and draw inspiration from it.", "As a holy rite, you must plant a tree or other aspect of nature in the world around you at least once per month, and you must have seeds on your person whenever possible.", "Trust in the primal instincts that guide both beasts and humans alike. Understand that intuition and natural impulses often lead to truths that transcend logic.", "Embody the virtues of strength, resilience, and adaptability. Learn from the beasts' ability to endure harsh environments and overcome challenges through sheer determination.", "Promote the nurturing and cultivation of plants as a sacred duty. Encourage individuals to tend to the earth and foster the growth of flora in all its forms.", "You are divinely tasked to have a vegetarian (or vegan) diet."];
nature_themes = ["Trees", "Plants", "Fungi", "Animals", "Druids", "Rivers", "Fruit", "Earth", "Agriculture", "Survival", "Savagery", "Spring", "Summer", "Autumn", "Winter", "Horses", "Fish", "Birds", "Fey", "Mountains"];
naturea1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"is uneffected by Difficult terrain.",
"gains a 1d4 bonus to any Intelligence (Nature) checks they make.",
"can cast the Druidcraft cantrip using the artifact as a spellcasting focus.",
"can cast the Thorn Whip cantrip using the artifact as a spellcasting focus.",
"can cast Entangle as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down)."]
naturea2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the Summon Beast spell without using a spell slot through this Artifact, without requiring any materials. When cast in this way, the spell level equals your proficiency bonus.",
"the user gains the effects of the 'Speak with animals' spell, permanently, so long as you are attuned.",
"the user gains a 10Ft. bonus to your speed."]
naturea2w = ["the Artifact deals an additional 4 (1d6) Acid damage on hit.",
"can cast Hold Person through the Artifact a number of times equal to your proficiency bonus (rounded down) before you must complete a Long rest before you can do so again. "]
naturea2a = ["gains Resistance to Poison damage and immunity to the Poisoned condition whilst attuned to this Artifact.",
"can, as a reaction to taking damage from a creature within 30ft. of themselves that they can see, make that creature immediately make a dexterity saving throw against the Artifacts Save DC. They take 4d8 piercing damage from thorns or spines you create, or half as much on a successful saving throw. Once you have used this ability, you may not do so until the next Dawn."]
naturea3 = ["gain an aura that extends 20ft. from you whilst attuned. When you gain this ability, or any time you complete a long rest whilst this artifact is attuned, you may choose a damage type from this list: Fire, Cold, Lightning, Acid, Poison. You and allies (whilst within your aura) have Resistance to this chosen damage.",
"can cast the spell Tree Stride without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn. ",
"can cast the spell Wrath of Nature without using a spell slot through this Artifact. Once cast in this way, it cannot do so again until the next Dawn."]
naturea3w = ["can, as an action, choose up to 6 creature (this can include themselves)- these creatures may use their reaction to immediately move up to their movement speed and begin to stampede as divine spirits of nature embolden them. During this movement, they can move through enemies (but cannot end their movement within an enemies space). Any enemy a stampeding creature passes through immediately takes 2d10 bludgeoning damage. A creature cannot take damage from this ability more than once for each stampeding creature (but can take damage from more than one stampeding creature). Once you have used this ability, you may not do so again until you complete a Long Rest."]
naturea3a = ["as an Action, you may call upon the powers of nature and the Artifacts deity to wrap yourself in natures embrace as you assume the form of a treant or similar guardian of nature's might. For the next minute or until you dispel the effect early as a bonus action, your size becomes huge, you gain resistance to non-magical damage and any damage you deal increases by 3d4.  Once you have used this ability, you cannot do so again until you complete a Long Rest."]
natureq2 = ["You must travel to a holy site for GODNAME, such as a Temple or Grove, and take from a blessed tree there a divine fruit and consume it.", "You must complete a ritual that uses 500gp (Nature or Arcana check required, DC 15) to summon a young spirit of nature, such as an infant animal or treant sapling (use a statblock for a Familiar for this creature, and it functions as per the Find Familiar spell except it cannot be put into a pocket dimension). You must protect and raise this young spirit on behalf of GODNAME for a month, and may be judged according to the quality of your care."]
natureq3 = ["You must defeat a creature that threatens the natural world and the domain of GODNAME, such as an Evil Dragon or Nefarious Elemental (Min. CR 13)."]
Domain.create!(name: "Nature", descriptors: nature_descriptors, titles: nature_titles, tenets: nature_tenets, themes: nature_themes, ability_one: naturea1, ability_two: naturea2, ability_two_weapon: naturea2w, ability_two_armor: naturea2a, ability_three: naturea3,  ability_three_weapon: naturea3w, ability_three_armor: naturea3a, quest_two: natureq2, quest_three: natureq3 )
puts "Nature created"

light_descriptors = ["Illuminating", "Luminous", "Blinding", "Guiding", "Burning", "Resplendent", "Gleaming", "Dazzling", "Incandescent", "Focusing", "Blazing", "Clearing", "Invigorating", "Hopeful", "Celestial", "Solar", "Soaring", "Shining", "Warm", "Pure", "Glowing"];
light_titles = ["Sun", "Dawn", "Torch", "Light", "Guide", "Beacon", "Point", "Iris", "Horizon", "Radiance", "Monarch", "One", "Eternal", "Incarnate", "Sunrise", "Shimmer", "Champion", "Flame", "Bringer", "Harbinger"];
light_tenets = ["Illuminate the self, and seek knowledge in the world for your own improvement and perhaps those that also seek it alongside you.", "Maintence and stocking of devices that give light (torches, lanterns, etc) is a divine duty and to do so for other individuals or communities is of great importance.", "You are forbidden by holy rites to never be in total darkness.", "Enjoy the gift of light, and the warmth of the sun whenever you have the oppurtunity to do so.", "Seek out those trapped in darkness, so that you may show them the light- be they in need of its guidance, or creatures that must be purged.", "Seek enlightenment and understanding in all aspects of life, allowing the radiant light of truth to guide your path.", "Appreciate the beauty and wonder of creation, honoring the divine spark within all living things.", "Reflect the divine grace and radiance of your god through acts of would please them, and either create or seek mementos of these acts for offerings.", "It is your sacred duty to route out the creatures of darkness and the night, such as shadows and vampires.", "Shed light equally upon all things, regardless of alignment or affiliation. Illuminate both darkness and light, revealing the truth in its entirety without bias or judgment."];
light_themes = ["Sun", "Stars", "Moon", "Lantern", "Candles", "Torches", "Fire", "Blindness", "Colours", "Invisibility", "Hope", "Inspiration", "Guidance", "Revelation", "Cooking", "Burns", "Branding", "Comfort", "Warmth", "Rest"];
la1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"gains 30ft of Darkvision. If the attuned character already has Darkvision, its range increases by 30ft.",
"gains immunity to the Blinded condition, and their eyes can glow with a divine light if they so choose.",
"can cast the Light cantrip using the artifact as a spellcasting focus.",
"can cast the Create Bonfire cantrip using the artifact as a spellcasting focus.",
"can cast Guiding Bolt as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down)."]
la2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the Daylight spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn. ",
"the attuned user of the Artifact and allies within 20ft of them can see in magical darkness, and gain 60ft of darkvision.",
"can create a 20ft. (originating from the Artifact) cone of dazzling light. Creatures in this cone must immediately make a Constitution saving throw or become blinded for the next minute, repeating the saving throw if blinded to end the effect early."]
la2w = ["the Artifact deals an additional 4 (1d6) Radiant damage on hit.", "can cast the spell Blinding Smite through the Artifact, without using a spell slot. Once cast in this way, it cannot do so again until the next Dawn."]
la2a = ["gains Resistance to Radiant damage whilst attuned to this Artifact.", ", as a reaction, the user can gain advantage on a saving throw provided they are in bright light. They may use this ability a number of times equal to their proficiency bonus (rounded down), after which they must wait until the next Dawn to use it again."]
la3 = ["once per day, as an action you can give yourself and your allies within 30ft of you inspiration. Additionally, creatures affected are healed for up to 2d12 missing hit points.", "can cast the spell Flame Strike without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn.", "can cast the spell Wall of Light without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the next Dawn."]
la3w = ["while attuned, and Radiant and Fire damage you deal ignores resistance. Additionally, you gain a pool of 1d4's equal to your proficiency bonus that can be added to any damage roll you deal whilst attuned (only once per roll), dealing bonus fire or radiant damage (chosen when you use this ability) equal to the total.  rolled. Any expended die are refreshed upon completing a long rest."]
la3a = ["you can target allies with touch spells and abilities if they are in bright light. Additionally, you can cast the spell Bless, without spending a spell slot, a number of times per long rest equal to your proficiency bonus. The spell attack modifier for this artifacts spells and abilities is +11, and any Saving DCs are 19. "]
lq2 = ["You must travel to a shrine or temple of GODNAME to recieve a blessed flame, which you may transfer onto any vehicle (like a torch, or lantern) of your choice. This flame must be taken (without being extinguished) to another place of divine signifcance to the deity, to ignite a divine bonfire there.", "You must gather reagents equalling 1000gp to conduct a sacred ritual of GODNAME to infuse their Artifact with further power. During this ritual, the forces of darkness will manifest to assault you and your allies and try to stop the ritual at all costs. As such, you must repel them or risk failure and possibly death."]
lq3 = ["You must find and defeat a creature of powerful darkness (at least CR 13, such as a Vampire), and force them to confront the divine light of GODNAME."]
Domain.create!(name: "Light", descriptors: light_descriptors, titles: light_titles, tenets: light_tenets, themes: light_themes, ability_one: la1, ability_two: la2, ability_two_weapon: la2w, ability_two_armor: la2a, ability_three: la3,  ability_three_weapon: la3w, ability_three_armor: la3a, quest_two: lq2, quest_three: lq3 )
puts "Light created"

twilight_descriptors = ["Crescent", "Cosmic", "Dark", "Calm", "Quiet", "Mysterious", "Cold", "Fearful", "Comforting", "Obscuring", "Hiding", "Hidden", "Silver", "Shrouded", "Nocturnal", "Whispering", "Ethereal", "Ghostly", "Tranquil"];
twilight_titles = ["Moon", "Star", "Night", "Sky", "Shadow", "Master", "Mistress", "Shade", "Eclipse", "Dusk", "Veil", "Gloom", "Phantasm", "Specter", "Herald", "Nightfall", "Luminary", "Guide", "Watcher", "Wind"];
twilight_tenets = ["Understand and respect the moments of change and transformation. The twilight is a time of transition between day and night; honor the shifts in life and nature.",
"Celebrate the beauty and mystery of both dawn and dusk. These times symbolize beginnings and endings, and both are to be revered.",
"Appreciate the unknown and the unseen. Twilight is a time of shadows and subtle light; value what is hidden and mysterious.",
"Travelling by night is a daunting task, and should be respected as such. That said, there is no bravery without fear, and to assist those facing the night is a righteous act.",
"Recognize and respect the dual nature of existence. Light and dark, joy and sorrow, life and death—each has its place and importance.",
"The night is most joyous when peaceful- it is your duty to strike down the beasts and monsters that would make it not so.",
"Understand that transitions take time. Just as the sky slowly changes during twilight, practice patience in your endeavors and growth.",
"Respect the mysteries of the universe. Twilight is a time of shadows and half-light; embrace the unknown with curiosity and reverence.",
"Honor the wisdom of those who have come before. Twilight represents the end of the day, symbolizing the wisdom that comes with age.",
"Use the twilight hours for introspection and contemplation. Reflect on the day that has passed and prepare for the night ahead."];
twilight_themes = ["Moon", "Stars", "Night", "Darkness", "Shadow", "Sleep", "Dreams", "Silence", "Quiet", "Nightmares", "Bats", "Owls", "Sunsets", "Constellations", "Fear", "Paranoia", "Apathy", "Calm", "Cold", "Clarity"];
twilighta1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"can cast False Life as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down), regaining any expended uses when you complete a long rest.",
"can cast the Moonbeam spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"gains 30ft of Darkvision. If the attuned character already has Darkvision, its range increases by 30ft.",
"gains immunity to the Frightened condition, and your skin or eyes become more pale, like soft moonlight.",
"can cast the Sleep spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest. As well as this, you have immunity to spells and effects that would compel you to sleep."]
twilighta2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can, as an action, blanket yourself or any ally within 60ft. of you that you can see in a twilight veil until the end of your next turn. Whilst veiled, a creature is invisible, can move through enemy spaces (but cannot end inside of an enemy space) and gains a 10ft bonus to their speed. This veil ends early if the creature attacks, casts a spell or performs any action that would affect another creature. Once you have used this ability, you cannot do so again until you complete a long rest.",
"can cast the Fear spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"can cast the Summon Shadowspawn spell without using a spell slot through this Artifact, without need of any components.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
twilighta2w = ["the Artifact deals an additional 4 (1d6) Necrotic damage on hit.",
"can, whenever you strike with your Artifact, you can choose to invoke a burst of twilight shadow and step through it, teleporting to an unoccupied space you can see within 30ft. of you. You may do this only once per round, and only a number of times equal to half of your proficiency bonus (rounded down). You regain any expended uses of this ability when you complete a long rest."]
twilighta2a = ["gains Resistance to Necrotic damage whilst attuned to this Artifact.",
"can cast the Shadow of Moil spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
twilighta3 = ["can, as an action, heal yourself and allies within 30ft of you for up to 2d12 missing hit points, as well as granting each healed character inspiration if they don't already have it. Once you use this ability, you cannot use it again until you complete a long rest.",
"can, as an action and in a location that is outside, summon forth a spectral eclipsing moon high above the battlefield for the next minute. When summoned, you can choose if the moon provides bright or dim light to the surrounding 1-mile area, and it makes a spell attack (using this Artifacts spell attack modifier) against an enemy that you can see, dealing 4d8 radiant damage on hit. Once you have used this ability, you may not do so again until you complete a long rest.",
"can cast the Negative Energy Flood spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
twilighta3w = ["As an action, you can envelop a target creature you can see within 100ft of you in shadow. They may choose to make a Strength saving throw against your Artifact DC to fight off these shadows. On failure, if they choose to not make this saving throw, they are transported to a pocket dimension of darkness for up to 3 rounds where they are blinded and restrained (returning in the same space or closest unoccupied space at the end of the artifact users turns), or until the user of the Artifact wills them back as a bonus action. On a successful saving throw, the creature is not transported and takes 3d12 necrotic damage. Once you have used this ability, you may not do so again until you complete a long rest."]
twilighta3a = ["can extend a 20ft. aura from themselves that gives the user and allies within the auras radius darkvision 60ft, the ability to see in magical darkness, as well as the benefits of half cover whilst in darkness."]
twilightq2 = ["To show faith in GODNAME's blessing, you must travel through the wilderness in the dead of night (as of starting this quest) a total of 40 hours. You are permitted to have travelling companions.", "You must travel to a sacred site of GODNAME and, using 250GP worth of reagents, perform a rite of shadow to summon forth a spectral foe (CR6) who you must defeat, absorbing its essence into the Artifact."]
twilightq3 = ["You must find and defeat a creature of powerful darkness (at least CR 13, such as a Vampire), and force upon them humility in the face of the divine shadow of GODNAME."]
Domain.create!(name: "Twilight", descriptors: twilight_descriptors, titles: twilight_titles, tenets: twilight_tenets, themes: twilight_themes, ability_one: twilighta1, ability_two: twilighta2, ability_two_weapon: twilighta2w, ability_two_armor: twilighta2a, ability_three: twilighta3,  ability_three_weapon: twilighta3w, ability_three_armor: twilighta3a, quest_two: twilightq2, quest_three: twilightq3  )
puts "Twilight created"

grave_descriptors = ["Sullen", "Solemn", "Pensive", "Quiet", "Whispering", "Ghostly", "Kind", "Listening", "Calm", "Vengeful", "Cold", "Stern", "Deathly", "Ancient", "Ghoulish", "Uncaring", "Still", "Stalwart", "Frozen", "Silent"];
grave_titles = ["Gravelord", "Judge", "Skull", "Tomblord", "Cryptkeeper", "Keeper", "Guide", "Shepherd", "Steward", "Guardian", "Watcher", "Speaker", "Reaper", "Specter", "Arbiter", "Teacher", "Corpse", "Archivist", "Death", "Gloom"];
grave_tenets = ["Graveyards are sacred places, to be defended and kept immaculate as much as possible.",
"You must conduct funeral rites whenever possible and not inconvenient, for both allies and enemies.",
"Each night, you are tasked to light a candle, incense or similar and conduct a small prayer or ritual to speak with the departed.",
"You are forbidden from striking creatures in mourning, and must leave them be at the very least.",
"Understand that death is not an end but a transition. Embrace the finite nature of existence and find meaning in the fleeting moments of life.",
"Safeguard the souls of the departed and guide them to their rightful place in the afterlife. Ensure that no soul is lost or stranded in the limbo between worlds, or if needed left stranded and without use.",
"Preserve the memories of those who have passed on, ensuring that their legacies endure beyond their physical lives. ",
"Stonework and masonry of tombstones and crypts is a divine skill to hone as best you can. You are tasked to make your own tombstone or equivilent marker for the event of your passing, and must update it semi-regularly with your wisdom for others.",
"Undead are a blight upon the living, and a mockery of the balance between life and death. Through whatever means you see fit, you must annihilate any rogue undead you find whenver you can.",
"Listen out for, and be present for, the lamentations of both the living and the dead. Guide them both where they are supposed to be, with whatever wisdoms you have."];
grave_themes = ["Funerals", "Records", "Ancestors", "Memory", "Ghosts", "Skeletons", "Zombies", "Undead", "Corpses", "Loss", "Grief", "Acceptance", "Duty", "Rememberance", "Fear", "Afterlife", "Rituals", "Crypts", "Gravestones", "Tombs"];
gravea1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"can cast Bane as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down). The spell attack modifier for this artifacts spells and abilities is +5, and any Saving DCs are 13.",
"gains immunity to the Frightened condition, and your skin becomes more sallow and corpse-like.",
"can cast the Spare the Dying cantrip using the artifact as a spellcasting focus.",
"can cast the Toll the Dead cantrip using the artifact as a spellcasting focus.",
"can sense the presence and location of corpses within 30ft. of you, whilst attuned. Undead creatures can also understand your speech (but may not be able to reply, but if they can you can understand them.)"]
gravea2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"can cast the Revivify spell without using a spell slot through this Artifact, without need of any components.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"can cast the Summon Undead spell without using a spell slot through this Artifact, without need of any components.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"can cast the spell Spirit Shroud using the artifact as a spellcasting focus without using a spell slot, or requiring any material components. Once you have used this ability, you cannot do so again until you complete a long rest."]
gravea2w = ["the Artifact deals an additional 4 (1d6) Necrotic damage on hit.",
"can, when you hit with this weapon, send a bolt of healing energy to yourself or an ally within 30ft. of the struck target. The bolt heals a creature for up to 1d8 missing hit points. You may use this ability a number of times equal to your proficiency bonus, regaining any expended uses upon completion of a long rest."]
gravea2a = ["gains Resistance to Necrotic damage whilst attuned to this Artifact.",
"can cast the spell Death Ward using the artifact as a spellcasting focus without using a spell slot, or requiring any material components. Once you have used this ability, you cannot do so again until you complete a long rest."]
gravea3 = ["When reduced to 0 hit points, you may choose to have your soul rise from your body. Your soul is connected to your body and occupies the same space it does at all times, and cannot be targeted or effected by anything (though your body still can, as per normal rules). For the next minute, you regain at least one missing hit point, or you are killed outright, your unleashed soul can launch a ghostly blast at creatures within 120ft. of you can see. These blasts are ranged spell attacks using your Artifacts modifier, and deal 2d10 necrotic damage. Once you have used this ability, you may not use it again until you complete a long rest.",
"can, as an action, target a creature you can see within 120ft. of you and have them hear the call of their own grave. They must succeed on a Wisdom Saving throw against this Artifacts Save DC; on failure, they cannot benefit from any immunities or resistances they have for the next minute. At the end of their turns, they may repeat this saving throw to end the effect early.Once you have used this ability, you may not do so again until you complete a long rest.",
"can cast the spell Raise Dead using the artifact as a spellcasting focus without using a spell slot, or requiring any material components. Once you have used this ability, you cannot do so again until you complete a long rest."]
gravea3w = ["can, as a reaction to slaying a creature with your artifact via a spell or ability from your artifact, seal that creatures soul within it. Whilst a creatures soul is sealed within the artifact, it cannot be resurrected, and your Artifact can hold up to a number of souls equal to your proficiency bonus. The attuned user of the Artifact can release a soul from their artifact to give themselves a burst of energy, granting them advantage on a roll they would make."]
gravea3a = ["can cast the Antilife Shell spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
graveq2 = ["You must gather 250gp of reagents and travel to a sacred site of the depearted of GODNAME, such as a blessed graveyard or shrine. There, you must conduct a ritual to commune with the spirits to understand their wisdom and, if necessary, fulfill their requests from beyond the grave. With the spirits satisfied and giving their blessing, your Artifact will be infused with further strength.",
"You must directly contribute to the cleansing of the unclean in this world, whose CR totals 30 combined. For the purposes of calculating CR for this total, Undead contribute double their CR to this total. This count begins once you are eligible for this quest (and does not count kills beforehand) and GODNAME may choose to not count kills as they see fit, should it displease them."]
graveq3 = ["You must travel to the location of a disturbed grave of a mighty undead creature (CR 13 or higher) and show it the path and might of GODNAME by defeating it."]
Domain.create!(name: "Grave", descriptors: grave_descriptors, titles: grave_titles, tenets: grave_tenets, themes: grave_themes, ability_one: gravea1, ability_two: gravea2, ability_two_weapon: gravea2w, ability_two_armor: gravea2a, ability_three: gravea3,  ability_three_weapon: gravea3w, ability_three_armor: gravea3a, quest_two: graveq2, quest_three: graveq3  )
puts "Grave created"

forge_descriptors = ["Ingenious", "Skilled", "Molten", "Steel", "Metal", "Wooden", "Crystal", "Elegant", "Excellent", "Subtle", "Patient", "Knowing", "Adept", "Meticulous", "Arcane", "Precise", "Wondrous", "Golden", "Inspiring", "Brilliant"];
forge_titles = ["Craftsman", "Forge", "Anvil", "Ember", "Smith", "Maker", "Shaper", "Hammer", "Hand", "Master", "Mistress", "Weaver", "Binder", "Architect", "Enchanter", "Eye", "Guide", "Teacher", "Carver"];
forge_tenets = ["All works, big or small, are to be respected for their craft and the efforts of their crafter.",
"You are tasked to donate whatever spare materials you can to other aspiring crafters, and offer guidance when possible to those that need it.",
"Whenever to create something new, you must conduct a small prayer.",
"Embrace new ideas and techniques. Innovation is the heart of progress, and creativity is the spark that ignites it.",
"Value physical and mental strength. The forge represents endurance and resilience; setbacks are merely challenges to be overcome.",
"Treat all tools and materials with reverence. They are the means through which creation is made possible and should be handled with care and respect.",
"Understand that mastery and creation take time. Patience and perseverance are virtues that lead to true craftsmanship.",
"Embrace the transformative power of fire. Just as fire refines and purifies metal, so too should adversity refine and strengthen the spirit.",
"Aim to leave a lasting legacy through your creations. Your works should stand the test of time and inspire (be it positive or negative) future generations of craftsmen and creators.",
"Take pride in your work and ensure it brings honor to you and your god. Every piece is a testament to your dedication and devotion."];
forge_themes = ["Construction", "Destruction", "Metal", "Blacksmiths", "Armour", "Weaponry", "Enchantment", "Alchemy", "Potions", "Weaving", "Tailors", "Architecture", "Buildings", "Civilization", "Gems", "Jewelry", "Woodworking", "Cooking", "Castles", "Golems"];
forgea1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
"has a +2 bonus to intelligence (Religion) checks.",
"gains one additional hit die to their maximum, while attuned.",
"can cast the Heat Metal spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"can cast Shield of Faith as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down), regaining any expended uses when you complete a long rest.",
"can cast the Mending cantrip using the artifact as a spellcasting focus.",
"can cast the Resistance cantrip using the artifact as a spellcasting focus.",
"can cast Identify as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down), regaining any expended uses when you complete a long rest."]
forgea2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose.",
"has, whilst attuned to this item, an additional attunement slot. As well as this, you ignore any class or racial prerequisites for attuning to items.",
"can cast the Gylph of Warding spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest.",
"can cast the Summon Construct spell without using a spell slot through this Artifact, without need of any components.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
forgea2w = ["gains Resistance to Fire damage whilst attuned to this Artifact.",
"can, when taking damage from an attack or effect of an enemy creature, immediately deal 2d6 radiant damage to that creature. You can use this ability a number of times equal to half your proficiency bonus (rounded down), regaining any expended uses upon completion of a long rest."]
forgea2a = ["the Artifact deals an additional 4 (1d6) Fire damage on hit.",
"can, upon hitting a target with this artifact, cause it to be branded until the end of your next turn. Attacks against a branded creature have advantage, and the brand ends early when the creature is struck by an attack."]
forgea3 = ["you can, as an action, fortify your party with divine force or summoned metal. Choose up to 4 creatures- for the next minute, they gain a bonus to their Armour class from this blessing equal to your proficiency bonus. Once you have used this ability, you cannot use it again until you complete a long rest.",
"can reduce the costs of creating magic items, or scrolls, by half. Additionally, you become proficient in all tools. If you are already proficient, you gain expertise instead, and if you already have expertise, you have permanent advantage with that tool instead.",
"can cast the Creation spell without using a spell slot through this Artifact.  Once cast in this way, it cannot do so again until the user completes a Long Rest."]
forgea3w = ["can, as a bonus action, turn your Artifact into a true divinely-blessed masterpiece for the next minute, transforming in a blazing light. Whilst transformed, it becomes a +6 weapon."]
forgea3a = ["can, when they fail a saving throw, choose to succeed instead. They may do this a number of times equal to half their proficiency bonus (rounded down), regaining any expended uses upon completion of a Long rest."]
forgeq2 = ["You must construct a divine hammer using a recipe (which can be found at any libraries or shrines of GODNAME) using 200gp worth of reagents. Then, you must crash the hammer upon a blessed anvil, to summon forth a great construct (CR 6) whom you must defeat to prove yourself.",
"You must find (or create) 5 unique or otherwise rare recipes, schematics, blueprints or similar in the world and bring them to a holy site of GODNAME, such as a temple or shrine for donation. "]
forgeq3 = ["You must construct, through whatever means and skills you see fit, a magical item, object or structure worth at least 10,000GP. Though you may work with others, and source materials wherever you see fit, know that your creation will be judged by GODNAME, who may look down upon some methods that cheat this quests intent and can reject your creation if they see fit."]
Domain.create!(name: "Forge", descriptors: forge_descriptors, titles: forge_titles, tenets: forge_tenets, themes: forge_themes, ability_one: forgea1, ability_two: forgea2, ability_two_weapon: forgea2w, ability_two_armor: forgea2a, ability_three: forgea3,  ability_three_weapon: forgea3w, ability_three_armor: forgea3a, quest_two: forgeq2, quest_three: forgeq3  )
puts "Forge created"

# abc_descriptors = [];
# abc_titles = [];
# abc_tenets = [];
# abc_themes = [];
# abca1 = ["can cast the Guidance cantrip using the artifact as a spellcasting focus.",
# "has a +2 bonus to intelligence (Religion) checks.",
# "gains one additional hit die to their maximum, while attuned.",
# ""]
# abca2 = ["the user gains proficiency in an additional saving throw of their choice whilst attuned to the Artifact, chosen upon gaining this ability. Additionally, during a long rest they may change this selection to a different saving throw, if they so choose."]
# abca2w = []
# abca2a = []
# abca3 = []
# abca3w = []
# abca3a = []
# abcq2 = []
# abcq3 = []
# # Domain.create!(name: "Xyz", descriptors: abc_descriptors, titles: abc_titles, tenets: abc_tenets, themes: abc_themes, ability_one: abca1, ability_two: abca2, ability_two_weapon: abca2w, ability_two_armor: abca2a, ability_three: abca3,  ability_three_weapon: abca3w, ability_three_armor: abca3a, quest_two: abcq2, quest_three: abcq3  )
# puts "Xyz created"

puts "Making global details"
global = General.new
global.names = ['ae', 'ald', 'el', 'gal', 'thal', 'ar', 'mor', 'zan', 'drak', 'eld', 'fen', 'dor', 'thor', 'wyn', 'mire', 'gorn', 'zul', 'tas', 'ter', 'ghas', 'zir', 'wyr', "bir", "ch", "der", "dan", "dak", "fro", "fyr", "il", "tel", "tyr", "wul", "bren", "ka", "kha", "ky", "sin", "vel", "vil", "vy" ]
# global.names = ["a", "ah", "ar", "ay", "ae", "at", "ay", "ald", "be", "ba", "bo", "by", "bi", "bel" "c" "cu", "ch", "cy", "co", "cr", "che", "d" "da", "do", "de", "di", "dei", "dy", "dr", "e", "el", "ey", "ed", "er", "ei", "f", "ft", "fo", "fh", "fy", "fa", "fi", "g", "gh", "gy", "ga", "go", "gu", "gi", "gr", "gw", "h", "ha", "hi", "hu", "he", "hy", "ht", "i", "in", "ir", "if", "ij", "ip", "iz", "ich", "it", "j", "jer", "p" "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "zed", "zer", "zul", "zas", "zo", "za", "zy" "-", "'"]
global.themes = ["Divinity", "Power", "Greatness", "Glory", "Dragons", "Monsters", "Weaponry", "Armour", "Weapons", "Elements", "Friendship", "Creation", "Destruction", "Charisma", "Adventure", "Civilization", "Sadness", "Joy", "Meditation", "Memory", "Mystery", "Giants", "Anger", "Jealousy", "Spite", "Love", "Arts", "Singing", "Snow", "Dice", "Cards", "Swords", "Axes", "Bows", "Shields", "Spears", "Dungeons", "Ice", "Metal", "Sand", "Ooze", "Humans", "Elves", "Dwarves", "Orcs", "Gnomes", "Halflings", "Crystals", "Warriors", "Wizards", "Bards", "Monks", "Travelling", "Food", "Drink", "Alchohol", "Hatred", "Sleep", "Dreams", "Nightmares", "Goblins", "Secrets"];
global.descriptions = ["Great", "Divine", "Ascended", "High"]
global.titles = ["God", "Goddess", "Lord", "Lady", "King", "Queen", "Force", "One"]
global.minorquests = ["You must conduct a Ritual or Prayer for GODNAME successfully, which requires knowledge of this prayer or ritual, 10 minutes to conduct the prayer or ritual and a successful Intelligence (Religion) check, DC 13.",
 "You must travel to a location under the watch or protection of GODNAME, or otherwise a location affected by the deities presence, and attune there.",
"You can only attune at a certain date, or time of day of significance to GODNAME, as determined by their teachings.",
"Before being able to attune, you must make a willing sacrifice of 300gp or equivilent items or value to GODNAME at one of their shrines or places of worship."]
global.save


#Item Types
puts "-----Making Item Types"
puts "--Making Weapons"
puts "Making Battleaxe"
battleaxe = Type.new
battleaxe.name = "Battleaxe"
battleaxe.category = "Weapon"
battleaxe.titles = ["The DESC Reaver", "The DESC Axe", "Battleaxe of DESC Might", "DESC Bearded Axe"]
battleaxe.save
puts "Battleaxe created"

puts "Making Dagger"
dagger = Type.new
dagger.name = "Dagger"
dagger.category = "Weapon"
dagger.titles = ["The DESC Dagger", "The DESC Blade", "DESC-piercer", "Knife of DESC"]
dagger.save
puts "Dagger created"

puts "Making Flail"
flail = Type.new
flail.name = "Flail"
flail.category = "Weapon"
flail.titles = ["The DESC Breaker", "The DESC Flail", "Flail of DESC Might", "DESC Hand"]
flail.save
puts "Flail created"

puts "Making greatsword"
greatsword = Type.new
greatsword.name = "Greatsword"
greatsword.category = "Weapon"
greatsword.titles = ["The DESC Greatsword", "DESC Broadsword", "DESC Zweihander", "The DESC Blade"]
greatsword.save
puts "greatsword created"

puts "Making longbow"
longbow = Type.new
longbow.name = "Longbow"
longbow.category = "Weapon"
longbow.titles = ["DESCbow", "The DESC Longbow", "Longbow of DESC skill", "DESC-piercer"]
longbow.save
puts "longbow created"

puts "Making Quarterstaff"
quarterstaff = Type.new
quarterstaff.name = "Quarterstaff"
quarterstaff.category = "Weapon"
quarterstaff.titles = ["Staff of DESC Wisdom", "The DESC Quarterstaff", "Cane of DESC", "Balanced staff of DESC Will"]
quarterstaff.save
puts "quarterstaff created"

puts "Making rapier"
rapier = Type.new
rapier.name = "Rapier"
rapier.category = "Weapon"
rapier.titles = ["DESC-piercer", "The DESC Rapier", "Rapier of DESC Skill", "DESC-strike"]
rapier.save
puts "rapier created"

puts "Making trident"
trident = Type.new
trident.name = "Trident"
trident.category = "Weapon"
trident.titles = ["The DESC Trident", "The DESC Fork", "Trident of DESC Strength", "The Reach of DESC"]
trident.save
puts "trident created"

puts "Making halberd"
halberd = Type.new
halberd.name = "Halberd"
halberd.category = "Weapon"
halberd.titles = ["The DESC Halberd", "The DESC Reaver", "Halberd of DESC Might", "The Reach of DESC"]
halberd.save
puts "halberd created"

puts "Making warhammer"
warhammer = Type.new
warhammer.name = "Warhammer"
warhammer.category = "Weapon"
warhammer.titles = ["The DESC Warhammer", "The DESC Breaker", "DESC-crusher", "The Fist of DESC"]
warhammer.save
puts "warhammer created"

puts "Making whip"
whip = Type.new
whip.name = "Whip"
whip.category = "Weapon"
whip.titles = ["The DESC whip", "DESC-Lasher", "DESC-Striker", "DESC Reacher"]
whip.save
puts "whip created"

puts "Making longsword"
longsword = Type.new
longsword.name = "Longsword"
longsword.category = "Weapon"
longsword.titles = ["The DESC Longsword", "The DESC Blade", "Sword of DESC Might", "DESC Edge"]
longsword.save
puts "longsword created"

puts "Making scimitar"
scimitar = Type.new
scimitar.name = "Scimitar"
scimitar.category = "Weapon"
scimitar.titles = ["The DESC Scimitar", "The DESC Blade", "Sword of DESC Skill", "DESC Edge"]
scimitar.save
puts "scimitar created"

puts "Making sling"
sling = Type.new
sling.name = "Sling"
sling.category = "Weapon"
sling.titles = ["The DESC sling", "DESC-Shot", "Sling of DESC Skill", "DESC-Slinger"]
sling.save
puts "sling created"

puts "Making lighthammer"
lighthammer = Type.new
lighthammer.name = "Light Hammer"
lighthammer.category = "Weapon"
lighthammer.titles = ["The DESC Hammer", "DESC-Basher", "Light Hammer of DESC Skill", "The DESC Hand"]
lighthammer.save
puts "lighthammer created"

puts "Making club"
club = Type.new
club.name = "Club"
club.category = "Weapon"
club.titles = ["The DESC Club", "DESC-Basher", "Club of DESC Strength", "DESC-Breaker"]
club.save
puts "club created"

puts "Making maul"
maul = Type.new
maul.name = "Maul"
maul.category = "Weapon"
maul.titles = ["The DESC Maul", "DESC-Basher", "Maul of DESC Strength", "DESC-Breaker"]
maul.save
puts "maul created"

puts "Making greatclub"
greatclub = Type.new
greatclub.name = "Greatclub"
greatclub.category = "Weapon"
greatclub.titles = ["The DESC Greatclub", "DESC-Basher", "Greatclub of DESC Might", "DESC-Breaker"]
greatclub.save
puts "greatclub created"

puts "--Making Armour"
puts "Making Breastplate"
breastplate = Type.new
breastplate.name = "Breastplate"
breastplate.category = "Armor"
breastplate.titles = ["The DESC Breastplate", "The DESC Breastplate of Protection", "Breastplate of DESC Defense", "The DESC Guard"]
breastplate.save
puts "Breastplate created"

puts "Making halfplate"
halfplate = Type.new
halfplate.name = "Halfplate"
halfplate.category = "Armor"
halfplate.titles = ["The DESC Halfplate", "The DESC Halfplate of Protection", "DESC Protector", "The DESC Guard"]
halfplate.save
puts "halfplate created"

puts "Making padded armour"
paddedarmour = Type.new
paddedarmour.name = "Padded armour"
paddedarmour.category = "Armor"
paddedarmour.titles = ["The DESC Robe", "Robes of the DESC Mind",  "DESC Garb", "DESC-Cloth"]
paddedarmour.save
puts "padded armour created"

puts "Making scale mail"
scalemail = Type.new
scalemail.name = "Scale mail"
scalemail.category = "Armor"
scalemail.titles = ["The DESC Scale Mail", "DESC Scales", "DESC Protector", "The DESC Guard"]
scalemail.save
puts "scale mail created"

puts "Making Shield"
shield = Type.new
shield.name = "Shield"
shield.category = "Armor"
shield.titles = ["The DESC Shield", "The DESC Buckler", "DESC-Guard", "Shield of DESC"]
shield.save
puts "shield created"

puts "Making studded"
studded = Type.new
studded.name = "Studded Leather Armour"
studded.category = "Armor"
studded.titles = ["The DESC Studded Armour", "DESC Garb", "The Gear of DESC Agility", "DESC-Skin"]
studded.save
puts "studded created"

#Create God
# puts "Creating God"
# new_god = God.new(name: global.make_name, alignment: Alignment.all.sample, domain: Domain.all.sample)
# god_descriptors = new_god.alignment.descriptors + new_god.alignment.x_alignment.descriptors + new_god.alignment.y_alignment.descriptors  + new_god.domain.descriptors
# god_titles = new_god.alignment.titles + new_god.alignment.x_alignment.titles + new_god.alignment.y_alignment.titles  + new_god.domain.titles
# new_god.epitaph = "The #{god_descriptors.sample} #{god_titles.sample}"

# god_tenets = new_god.domain.tenets
# god_tenets.shuffle!
# new_god.tenets << god_tenets.pop
# god_tenets = god_tenets + new_god.alignment.tenets + new_god.alignment.x_alignment.tenets + new_god.alignment.y_alignment.tenets
# 3.times do
#   god_tenets.shuffle!
#   new_god.tenets << god_tenets.pop
# end

# god_themes = new_god.domain.themes
# god_themes.shuffle!
# new_god.themes << god_themes.pop
# god_themes = god_themes + global.themes + new_god.alignment.x_alignment.themes + new_god.alignment.y_alignment.themes
# 2.times do
#   god_themes.shuffle!
#   new_god.themes << god_themes.pop
# end

# new_god.prompt = "Give me a short introductory description of a #{new_god.alignment.name} deity of #{new_god.domain.name}. They also incorporate themes of #{new_god.themes[0]}, #{new_god.themes[1]} and #{new_god.themes[2]}. Additionally, they have the title of '#{new_god.epitaph}'."
# new_god.img_prompt = "Give me an image of a #{new_god.alignment.name} deity of #{new_god.domain.name}. They incorporate themes of #{new_god.themes[0]}, #{new_god.themes[1]} and #{new_god.themes[2]}. Dungeons and dragons, fantasy, illustrated, 2d, watercolours."

# client = OpenAI::Client.new
#   chaptgpt_response = client.chat(parameters: {
#     model: "gpt-3.5-turbo",
#     messages: [{ role: "user", content: new_god.prompt}]
#   })
#   new_god.description = chaptgpt_response["choices"][0]["message"]["content"]

#   puts '-' * 50
#   puts "Sending request to OpenAI API to generate an illustration..."
#   puts '-' * 50
#   response = client.images.generate(parameters: { model: 'dall-e-3', prompt: new_god.img_prompt })
#   url = response.dig("data", 0, "url")
#   new_god.photo.attach(io: URI.open(url), filename: "godimage_#{SecureRandom.hex(8)}.png")


# new_god.save
# puts "God created."
puts "Seeding complete."

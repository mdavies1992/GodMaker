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
Domain.create!(name: "Life", descriptors: life_descriptors, titles: life_titles, tenets: life_tenets, themes: life_themes )
puts "Life created"

arcana_descriptors = ["Magical", "Mystical", "Enchanting", "Great", "All-knowing", "Mysterious", "Boundless", "Wise", "Otherworldly", "Cosmic", "Ancient", "Powerful", "Cunning", "Learned", "Potent", "Esoteric", "Eldritch", "Enigmatic", "Shifting", "Roiling"];
arcana_titles = ["Arcane", "Sage", "Diviner", "Seer", "Diviner", "Master", "Weaver", "Mage", "Scrollmaster", "Teacher", "Entity", "Guardian", "Binder", "Custodian", "Sigil", "Runecarver", "Genesis", "Lord", "Lady", "Magus", "Warden"];
arcana_tenets = ["Embrace the pursuit of arcane wisdom and understanding. Encourage the study of magic in all its forms.", "Safeguard magical knowledge from those who would seek to disrupt or abuse it.", "Stand against those who would seek to suppress or extinguish magic from the world. Protect magical knowledge and artifacts from destruction or misuse.", "Encourage innovation and experimentation within the bounds of your gods ethical guidelines, if any. Inspire creativity and ingenuity in the development of new spells and magical techniques.", "Every month, you must sacrifice a scroll of magical power you have found or written, via ritual or donation to the faith's order.", "Acknowledge and respect the origins of magic, whether it be through divine providence, natural forces, or cosmic energies. Treat the source of magic with reverence and gratitude.", "It is your divinely appointed task to create at least one new spell or piece of magical craft, or to rediscover such a wonder.", "Safeguard the secrets of magic from those who would misuse or exploit them for nefarious purposes. Exercise discretion in sharing arcane knowledge and only reveal it to those deemed worthy and trustworthy.", "Cultivate a spirit of curiosity and exploration, delving into the mysteries of magic with an open mind and a thirst for discovery. Remain ever-curious and unafraid to explore the unknown.", "Work towards uniting practitioners of magic, regardless of their traditions or beliefs. Foster cooperation and understanding among magical communities to strengthen the bonds of arcane knowledge."];
arcana_themes = ["Abjuration", "Illusion", "Necromancy", "Conjuration", "Evocation", "Divination", "Transmutation", "Enchantment", "Wizards", "Rituals", "Spellbooks", "Wands", "Orbs", "Crystals", "Portals", "Elementals", "Abberations", "Runes", "Sorcery", "Pacts"]
Domain.create!(name: "Arcana", descriptors: arcana_descriptors, titles: arcana_titles, tenets: arcana_tenets, themes: arcana_themes )
puts "Arcana created"

war_descriptors = ["Supreme", "Bloodthirsty", "Undefeated", "Iron", "Mighty", "Valiant", "Indomitable", "Unyielding", "Relentless", "Proud", "Towering", "Triumphant", "Skilled", "Wrathful", "Deadly", "Screaming", "Striking", "Barbaric", "Unstoppable", "Esteemed"];
war_titles = ["Warlord", "Fury", "General", "Vanquisher", "Marshal", "Warrior", "Lord", "Fury", "Sentinel", "Conquerer", "Avatar", "Master", "Colossus", "Hellion", "Blade", "Bannerlord", "Breaker", "Juggernaut", "Force", "Champion"];
war_tenets = ["Uphold honor and integrity on the battlefield. Show respect for worthy opponents and face them will all your own skill and power, for to not do so is disrespect most shameful.", "Embrace discipline and training to hone your skills as a warrior and gain strength wherever you can, whenever you can. Strive for excellence in both mind and body.", "Forge bonds of camaraderie and loyalty with your fellow warriors. Together, stand as an indomitable force against adversity.", "Pay tribute to those who have fallen in battle. Honor their memory and ensure that their sacrifices are never forgotten through rituals or keepsakes.", "Fight not for personal glory alone, but for a greater cause or ideal. Dedicate your strength to the defense of justice, freedom, or the protection of your people.", "Pursue victory with unwavering determination. Spare no effort in achieving triumph on the battlefield.", "Be flexible and adaptable in the face of adversity. Embrace change and innovation to overcome challenges on the battlefield when needs arise in order to secure victory.", "Honor the spoils of victory, for that which has been taken through battle must be respected, and to act against those that have earned that right, or steal their spoils, is shameful.", "Maintence of your weapons and armour, and those of your allies, is a divine duty. A well-sharpened blade is a blessed blade.", "A quick prayer must be made before each battle you are involved in, if possible, or after each battle if not."];
war_themes = ["Strategy", "Maps", "Negotation", "Military", "Honor", "Might", "Training", "Combat", "Anger", "Defense", "Victory", "Defeat", "Surprise", "Logistics", "Morale", "Chanting", "Bloodlust", "Barbarians", "Knights", "Archers"];
Domain.create!(name: "War", descriptors: war_descriptors, titles: war_titles, tenets: war_tenets, themes: war_themes)
puts "War created"

tempest_descriptors = ["Sparking", "Blustering", "Thunderous", "Wrathful", "Ocean's", "Sea's", "Crackling", "Roiling", "Crushing", "Cylconic", "Menacing", "Fierce", "Unyielding", "Elemental", "Formidable", "Turbulent", "Imposing", "Mercurial", "Tranquil", "Booming"];
tempest_titles = ["Storm", "Gale", "Wind", "Lightning", "Zenith", "Depths", "Sovereign", "Wave", "Roar", "Conductor", "Tempest", "Bringer", "Rider", "Cyclone", "Arc", "Flash", "Crash", "Echo", "Heart", "End"];
tempest_tenets = ["Before any travel is made over a large body of water, an offering to your god must be made.","Storms are holy events to commune with your god, and must be aknowledged through prayer or ritual.", "At least once in your life, you must allow yourself to be struck by lightning as a test of body and faith.", "Embrace the primordial forces of nature, for within them lies the potential for creation and renewal. Embrace the storms as agents of change and transformation.", "Protect the skies and the creatures that dwell within them. Act as a guardian against threats to aerial life and ensure the safety of birds, flying creatures, and other inhabitants of the skies.", "Inspire creativity and innovation through the tempest's dynamic energy. Encourage the pursuit of new ideas and ventures, empowering individuals to harness the storm's power for innovation.", "Embrace the tempest as a purifying force that cleanses and renews. See destruction as a necessary precursor to rebirth and regeneration, clearing the path for new growth and possibility.", "Exercise restraint in the use of destructive power. Channel the fury of the tempest with wisdom and restraint, avoiding unnecessary destruction and collateral damage.", "The oceans depths are a divine realm of your god, and should be respected as such.", "You must conduct a prayer of thanks and to ask permission before you eat any food that has come from a body of water."];
tempest_themes = ["Storms", "Lightning", "Thunder", "Oceans", "Fish", "Birds", "Ships", "Fishing", "Clouds", "Tornados", "Sandstorms", "Hurricanes", "Inspiration", "Creativity", "Dust", "Sharks", "Whales", "Octopi", "Krakens", "Coral"];
Domain.create!(name: "Tempest", descriptors: tempest_descriptors, titles: tempest_titles, tenets: tempest_tenets, themes: tempest_themes )
puts "Tempest created"

death_descriptors = ["Reaping", "Grim", "Ghostly", "Necrotic", "Killing", "Haunting", "Undying", "Creeping", "Eternal", "Accursed", "Quiet", "Silent", "Whispering", "Fearful", "Rotting", "Final", "Waking", "Restful", "Dark", "Eternal"];
death_titles = ["Death", "Toll", "Skull", "End", "Tomblord", "Silence", "Veil", "Chill", "Dusk", "Night", "Touch", "Dread", "Skull", "Hand", "Shadow", "Shepherd", "Speaker", "Guide", "Lady", "Lord"];
death_tenets = ["As a divinely appointed task, all creatures you directly kill must be recorded, listed by name if known or description if a name is unknown.", "Death is an essential part of the natural order. Life must give way to death so that new life can emerge. Respect and honor the cycle of birth, life, death, and rebirth.", "Death knows no favorites. All beings, regardless of status, wealth, or power, must face their mortality. Treat all souls equally in their journey beyond.", "Understand that death is not an end but a transition. Embrace the finite nature of existence and find meaning in the fleeting moments of life.", "Offer mercy and compassion to those who suffer. Sometimes, death can be a release from pain and suffering. Show kindness and empathy in the act of ushering souls into the afterlife.", "Death reveals the ultimate truth of existence. Seek to understand and accept the inevitable truth of mortality, and help others confront their fears of death.", "Safeguard the souls of the departed and guide them to their rightful place in the afterlife. Ensure that no soul is lost or stranded in the limbo between worlds, or if needed left stranded and without use.", "Necromancy and the creation of undead creatures is a blessed act, and to be pursued or at least respected as a divine craft. ", "Preserve the memories of those who have passed on, ensuring that their legacies endure beyond their physical lives. ", "Cut through illusions and falsehoods to reveal the truth of existence. Challenge misconceptions and delusions about death, guiding beings toward a deeper understanding of the ultimate reality."];
death_themes = ["Skeletons", "Zombies", "Ghosts", "Decay", "Disease", "Vampires", "Funerals", "Slaughter", "Ending", "Tragedy", "Fear", "Sacrifice", "Silence", "Plagues", "Paranoia", "Dread", "Old age", "Stillness", "Necromancy", "Murder"];
Domain.create!(name: "Death", descriptors: death_descriptors, titles: death_titles, tenets: death_tenets, themes: death_themes)
puts "Death created"

trickery_descriptors = ["Mercurial", "Duplicitous", "Two-faced", "Dishonest", "Mysterious", "Mischievious", "Shrouded", "Prowling", "Shadowy", "Subtle", "Wily", "Sly", "Rogue", "Skulking", "Stalking", "Invisible", "Leading", "Perplexing", "Elusive", "Whimsical"];
trickery_titles = ["Trickster", "Mirror", "Liar", "Enigma", "Illusion", "Mirage", "Jester", "Conjurer", "Phantasm", "Deceiver", "Manipulator", "Wit", "Master", "Mistress", "Thief", "Shadow", "Paradox", "Mist", "Doubt", "Reflection"];
trickery_tenets = ["Embrace the art of deception as a fundamental aspect of existence. Recognize the power of illusion and subterfuge in shaping perception and manipulating reality.", "Cultivate skill in the arts of trickery and manipulation. Hone your ability to deceive and outwit adversaries, using guile and cunning to achieve your goals.", "Embrace trickery and unpredictability as catalysts for change and transformation. Revel in the uncertainty of the unknown, using it to sow confusion and disrupt the status quo.", "Be adaptable and versatile in your approach to challenges. Learn to think on your feet and improvise in the face of adversity, seizing opportunities as they arise.", "Use illusion and trickery as tools for liberation and freedom. Recognize that reality is subjective and mutable, and use the power of illusion to break free from constraints and limitations.", "Embrace unpredictability as a virtue to be cherished. Reject rigidity and predictability, and embrace the fluidity of change and transformation.", "Maintain balance in your relationships and alliances. Recognize that betrayal can be a double-edged sword, and strive to navigate the complexities of loyalty and betrayal with finesse and discretion.", "Acting and performance are divine skills to be honed, and as talents to be recognized. At least once, at some point in your life, you must perform in a publically accessible play.", "Embrace the complexity of morality and ethics. Understand that right and wrong are not always clear-cut and that actions must be evaluated in context.", "Find harmony amidst chaos and unpredictability. Embrace the ebb and flow of change, using trickery to navigate the turbulent currents of existence."];
trickery_themes = ["Lies", "Pranks", "Drama", "Illusions", "Mirrors", "Jesters", "Stealth", "Mirages", "Surprise", "Betrayal", "Cunning", "Doubt", "Transformation", "Stalking", "Spies", "Thievery", "Masks", "Duality", "Gambling", "Riddles"];
Domain.create!(name: "Trickery", descriptors: trickery_descriptors, titles: trickery_titles, tenets: trickery_tenets, themes:trickery_themes )
puts "Trickery created"

nature_descriptors = ["Forest's", "Green", "Apex", "Nature's", "Earthsong", "Ferocious", "Druidic", "Harmonious", "Wild", "Untamed", "Savage", "Blooming", "Enchanting", "Falling", "Waning", "Creeping", "Stalking", "Soaring", "Capricious", "Sturdy"];
nature_titles = ["Shepherd", "Beast", "Essence", "Tamer", "Hunter", "Sentinel", "Predator", "Warden", "Chorus", "Watcher", "Sovereign", "Lady", "Lord", "Arbiter", "Spirit", "Vine", "Overseer", "Balance", "Patron", "Bringer"];
nature_tenets = ["Maintain harmony with the natural world, recognizing the interconnectedness of all living beings and ecosystems. Respect the balance of nature and strive to live in harmony with it.", "Act as a steward of the earth, safeguarding its beauty and diversity for future generations. Protect and nurture the natural world, ensuring its vitality and resilience.", "Honor and respect all forms of life, from the smallest microorganism to the largest sentient being.", "Offer guidance and protection to those who venture into the wilderness. Provide wisdom and strength to navigate the challenges of the natural world.", "Seek communion with nature through contemplation, meditation, and ritual. Connect with the rhythms of the earth and draw inspiration from it.", "As a holy rite, you must plant a tree or other aspect of nature in the world around you at least once per month, and you must have seeds on your person whenever possible.", "Trust in the primal instincts that guide both beasts and humans alike. Understand that intuition and natural impulses often lead to truths that transcend logic.", "Embody the virtues of strength, resilience, and adaptability. Learn from the beasts' ability to endure harsh environments and overcome challenges through sheer determination.", "Promote the nurturing and cultivation of plants as a sacred duty. Encourage individuals to tend to the earth and foster the growth of flora in all its forms.", "You are divinely tasked to have a vegetarian (or vegan) diet."];
nature_themes = ["Trees", "Plants", "Fungi", "Animals", "Druids", "Rivers", "Fruit", "Earth", "Agriculture", "Survival", "Savagery", "Spring", "Summer", "Autumn", "Winter", "Horses", "Fish", "Birds", "Fey", "Mountains"];
la1 = []
la2 = []
la2w = []
la2a = []
la3 = []
la3w = []
la3a = []
lq2 = []
lq3 = []
Domain.create!(name: "Nature", descriptors: nature_descriptors, titles: nature_titles, tenets: nature_tenets, themes: nature_themes, ability_one: la1, ability_two: la2, ability_two_weapon: la2w, ability_two_armor: la2a, ability_three: la3,  ability_three_weapon: la3w, ability_three_armor: la3a, quest_two: lq2, quest_three: lq3 )
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
"can cast the Create Bonfire cantrip using the artifact as a spellcasting focus. The spell attack modifier for this artifacts spells and abilities is +5, and any Saving DCs are 13.",
"can cast Guiding Bolt as a first level spell through the Artifact a number of times equal to your proficiency bonus (rounded down). The spell attack modifier for this artifacts spells and abilities is +5, and any Saving DCs are 13."]
la2 = []
la2w = []
la2a = []
la3 = []
la3w = []
la3a = []
lq2 = []
lq3 = []
Domain.create!(name: "Light", descriptors: light_descriptors, titles: light_titles, tenets: light_tenets, themes: light_themes, ability_one: la1, ability_two: la2, ability_two_weapon: la2w, ability_two_armor: la2a, ability_three: la3,  ability_three_weapon: la3w, ability_three_armor: la3a, quest_two: lq2, quest_three: lq3 )
puts "Light created"

# _descriptors = [];
# _titles = [];
# _tenets = [];
# Domain.create!(name: "", descriptors: _descriptors, titles: _titles, tenets: _tenets )
# puts " created"

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
puts "Making Item Types"
puts "Making Sword"
battleaxe = Type.new
battleaxe.name = "Battleaxe"
battleaxe.category = "Weapon"
battleaxe.titles = ["The DESC Blade", "The DESC Axe", "Battleaxe of DESC Might", "DESC Bearded Axe"]
battleaxe.save
puts "Battleaxe created"



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

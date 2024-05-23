# Clear it all out
puts "Clearing DB"
God.destroy_all
Domain.destroy_all
Alignment.destroy_all
YAlignment.destroy_all
XAlignment.destroy_all
puts "DB Cleared"

# Create Core Alignments
puts "-- Creating X-Axis alignments"
lawful_descriptors = ["Mechanical", "Orderly", "Systematic", "Meticulous", "Calculated"];
lawful_titles = ["Warden", "Sentinel", "Lawmaker", "Lord", "Weaver"];
lawful_tenets = ["Respect the authority of the Law be it your own or those of the lands you are in, and enforce it where possible.", "Create order in realms of chaos, and fight those or that which promotes disharmony.", "Always go about your tasks in an orderly, systematic fashion. There is always a 'right' way to do things.", "Routines are paramount, and once created must be maintained. Create a routine to assess and improve your other routines, as necessary.", "Scheduling is the meaning of existence, without them nothing would come to pass. Punctuality is a holy mission."];
XAlignment.create!(name: "Lawful", descriptors: lawful_descriptors, titles: lawful_titles, tenets: lawful_tenets )
puts "Lawful created"

neutral_descriptors = ["Balanced", "Shfiting", "Thoughtful", "Harmonious", "Resolved"];
neutral_titles = ["Seer", "Keeper", "Mediator", "Scale", "Point"];
neutral_tenets = ["Strive for thoughtfulness in any situation where you may act, or react, considering the world, yourself and those you may affect with your action or inaction.", "Try to gain independance from the sways of law and chaos, and know what is true to your own ways between these philosophies. Be neither restricted nor untethered.", "Consideration for those around you is a great and blessed thing. Try not to distrupt the world by your actions, and instead match its flow.", "Adaptability is a virtue you must uphold- be ready to adapt to a situation, and find a way to stay calm when things are chaotic- but also know when to act when things are stagnant.", "Respect the lands and places you find yourself in, and the customs of its people, but do not bend to them either."];
XAlignment.create!(name: "Neutral", descriptors: neutral_descriptors, titles: neutral_titles, tenets: neutral_tenets )
puts "Neutral created"

chaos_descriptors = ["Spotaneous", "Unbound", "Untethered", "Rebellious", "Wild"];
chaos_titles = ["Havoc", "Cascade", "Flux", "Chaos", "Discord"];
chaos_tenets = ["Freedom above all else, suffer not the chains of those who would put them on you or others.", "Plans are a comfort to those who wish to control the world, true, but they not for those with faith in chaos.", "Trust your inner gut and feelings above all else, no matter what others may tell you.", "Do not tell others how to act nor feel, and do not listen to those who tell you the same.", "Always strive to do something new, or go somewhere new, each and every day."];
XAlignment.create!(name: "Chaotic", descriptors: chaos_descriptors, titles: chaos_titles, tenets: chaos_tenets )
puts "Chaotic created"

puts "-- Creating Y-Axis alignments"
good_descriptors = ["Holy", "Divine", "Blessed", "Radiant", "Heavenly"];
good_titles = ["Angel", "Exemplar", "Grace", "Host", "Spirit"];
good_tenets = ["Face down the forces of Evil, no matter where or what they are, or where they might be.", "Purify yourself, be selfless and true so that you may inspire those with good example.", "Do good deeds, inspire others and show praise to those whos acts are praiseworthy to encourage ever more.", "Conversion of those of evil or those on the path to evil to the side of good is paramount. Give mercy and understanding to those that need it most.", "Heal the lands where evil has taken root and corrupted, be it physical or spiritual."];
YAlignment.create!(name: "Good", descriptors: good_descriptors, titles: good_titles, tenets: good_tenets )
puts "Good created"

neutral_descriptors = ["Ethereal", "Impartial", "Immutable", "Neutral"];
neutral_titles = ["Overseer", "Keeper", "Force", "Observer"];
neutral_tenets = ["Undestand balance, and strive to maintain equilibrium and harmony in the universe, acknowledging the necessity of both light and darkness, good and evil.", "Judge actions based on their consequences and impact on the balance of existence rather than on moral absolutes.", "Respect free will and recognize the sovereignty of individuals to make their own choices, understanding that freedom of choice is essential for growth and development.", "Focus on the self and your understanding of the self. Though moral decisions can be used to react and interact with the world around you, you must maintain neutrality within the self."];
YAlignment.create!(name: "Neutral", descriptors: neutral_descriptors, titles: neutral_titles, tenets: neutral_tenets )
puts "Neutral created"

evil_descriptors = ["Evil", "Vile", "Nefarious", "Unholy"];
evil_titles = ["Lord", "Master", "Shadow", "Malevolence"];
evil_tenets = ["Harness a ruthless ambition without limits, where the ends you desire justifiy any means you must take to get them.", "Corrupt the Innocent and untainted, and know the delight in turning them to darkness.", "Celebrate acts of cruelty, betrayal, and destruction as virtuous deeds that are the hallmark of evil.", "Eradicate Hope, and seek to extinguish it, goodness and faith, wherever they are found, leaving only despair in their wake."];
YAlignment.create!(name: "Evil", descriptors: evil_descriptors, titles: evil_titles, tenets: evil_tenets )
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
lg_descriptors = ["Valiant", "Virtuous", "Honourable", "Righteous"];
lg_titles = ["Paragon", "Arbiter", "Keeper", "Pillar"];
lg_tenets = ["Make sure the law helps the world it is in, enforce it but change it if it does not suit it's truest purpose.", "Temper thyself, keep patience until it is time to act, and wisdom to know when that is.", "Inspire unity for the greater good with those that would call you ally readily or in time, wherever you may be.", "Maintain and support equality for all good peoples and civilizations." ]
lg = Alignment.new(name: "Lawful Good", descriptors: lg_descriptors, titles: lg_titles, tenets: lg_tenets)
lg.x_alignment = l;
lg.y_alignment = g;
lg.save
puts "Lawful Good created"

ng_descriptors = ["Serene", "Compassionate", "Tranquil", "Wise"];
ng_titles = ["Guide", "Arbiter", "Steward", "Patron"];
ng_tenets = ["Embody compassion, holding empathy, kindness, and generosity towards all living beings, regardless of their background or affiliation.", "Support personal development, education, and self-improvement, empowering individuals to reach their full potential and contribute positively to the world.", "Demonstrate the virtues of neutrality and goodness through actions, rather than dogma or imposition, inspiring others to embody these principles in their own lives.", "Respect Autonomy, and honor the individual autonomy and free will of sentient beings, allowing them to make their own choices and determine their own paths." ];
ng = Alignment.new(name: "Neutral Good", descriptors: ng_descriptors, titles: ng_titles, tenets: ng_tenets)
ng.x_alignment = xn;
ng.y_alignment = g;
ng.save
puts "Neutral Good created"

cg_descriptors = ["Hopeful", "Rising", "Free", "Liberating"];
cg_titles = ["Rebel", "Beacon", "Martyr", "Spark"];
cg_tenets = ["Let not the tides of cruelest evil nor the stagnation of emotionless law stop you from doing good in this world.", "Stand against tyranny, oppression, and corruption wherever they may arise, and inspire others to do the same.", "Inspire rebellion where it is most needing,a nd be the spark that sets spirits ablaze in defiance against unjust laws, oppressive traditions, and societal norms that limit individual liberty and equality.", "Embrace change, unpredictability, and spontaneity, encouraging individuals to follow their instincts and pursue their own paths."];
cg = Alignment.new(name: "Chaotic Good", descriptors: cg_descriptors, titles: cg_titles, tenets: cg_tenets)
cg.x_alignment = c;
cg.y_alignment = g;
cg.save
puts "Chaotic Good created"

#--------

ln_descriptors = ["Stern", "Lawful", "Orderly", "Systematic"];
ln_titles = ["Judge", "Advocate", "Arbiter", "Justicar"];
ln_tenets = ["Administer justice impartially, judging actions based on their adherence to established laws and regulations rather than personal feelings, moral leanings or biases.", "Strive to maintain order and stability in all aspects of existence, understanding that chaos and disorder can lead to suffering and conflict.", "Adhere to established procedures and protocols in all endeavors, recognizing the importance of consistency and predictability in decision-making.", "Honor contracts and agreements made in good faith, understanding that trust and reliability are essential for maintaining order in relationships and transactions."];
ln = Alignment.new(name: "Lawful Neutral", descriptors: ln_descriptors, titles: ln_titles, tenets: ln_tenets)
ln.x_alignment = l;
ln.y_alignment = yn;
ln.save
puts "Lawful Neutral created"

tn_descriptors = ["Serene", "Compassionate", "Tranquil", "Wise"];
tn_titles = ["Guide", "Arbiter", "Steward", "Patron"];
tn_tenets = ["Strive to keep balance in the universe and the natural equilibrium of the universe, recognizing the value of both order and chaos, good and evil.", "Seek Equilibrium, continuously striving to restore balance and harmony where it has been disrupted, acting as a mediator and peacemaker when necessary.", "Embrace change and adaptability as inherent aspects of the ever-evolving existence, remaining open to new possibilities and perspectives.", "Moderation in all things is paramount: Avoid extremes and excesses, seeking to find a middle ground that promotes stability and harmony."];
tn = Alignment.new(name: "True Neutral", descriptors: tn_descriptors, titles: tn_titles, tenets: tn_tenets)
tn.x_alignment = xn;
tn.y_alignment = yn;
tn.save
puts "True Neutral created"

cn_descriptors = ["Whimsical", "Mercurial", "Unpredictable", "Capricious"];
cn_titles = ["Unknown", "Catalyst", "Liberty", "Rogue"];
cn_tenets = ["Embrace Freedom and advocate for individual freedom and autonomy, resisting any form of oppression or tyranny that restricts personal liberty.", "Embrace Change and the ever-changing nature of existence, promoting innovation, spontaneity, and evolution.", "Challenge Authority, question supposed order and challenge established authority and societal norms that inhibit personal expression and growth.", "Embrace chaos as a natural force of creativity and transformation, rejecting rigid structures and hierarchies that limit individual potential."];
cn = Alignment.new(name: "Chaotic Neutral", descriptors: cn_descriptors, titles: cn_titles, tenets: cn_tenets)
cn.x_alignment = c;
cn.y_alignment = yn;
cn.save
puts "Chaotic Neutral created"

#--------

le_descriptors = ["Tyrannical", "Supreme", "Cruel", "Diabolic"];
le_titles = ["Overlord", "Master", "Dread", "Enforcer"];
le_tenets = ["Establish and maintain absolute authority over all aspects of existence, enforcing obedience through fear and coercion for yourself and/or your god.", "Might Makes Right: Embrace the belief that power and strength are the ultimate virtues, and that those who are strong have the right to rule over the weak", "Law is a tool of oppression and you should strive to manipulate laws and regulations to serve personal interests and suppress dissent, using legal means to justify immoral actions.", "Establish rigid hierarchies and systems of order, ensuring that all individuals know their place and submit to those above them."];
le = Alignment.new(name: "Lawful Evil", descriptors: le_descriptors, titles: le_titles, tenets: le_tenets)
le.x_alignment = l;
le.y_alignment = e;
le.save
puts "Lawful Evil created"

ne_descriptors = ["Wretched", "Dreadful", "Vile", "Sinister"];
ne_titles = ["Shadow", "Schemer", "Bane", "Oppurtunist"];
ne_tenets = ["The ends Justify the Means and any action, no matter how cruel or immoral, is by divine mandate if it serves the ultimate goal of personal power and domination.", "Prioritize personal survival and advancement above all else, ensuring that one's own needs are met before considering the needs of others.", "Exploit the weaknesses of others to gain an advantage, viewing compassion and mercy as opportunities for manipulation.", "Depend on one's own abilities and resources rather than relying on the assistance or goodwill of others, viewing alliances as temporary and expendable."];
ne = Alignment.new(name: "Neutral Evil", descriptors: ne_descriptors, titles: ne_titles, tenets: ne_tenets)
ne.x_alignment = xn;
ne.y_alignment = e;
ne.save
puts "Neutral Evil created"

ce_descriptors = ["Ruinous", "Brutal", "Destructive", "Hungering"];
ce_titles = ["Havoc", "Harbinger", "Carnage", "Scourge"];
ce_tenets = ["Use manipulation, deception, and propaganda to maintain control over the masses and further personal agendas.", "Reject moral codes and ethical standards as arbitrary restrictions imposed by society, embracing personal freedom and autonomy above all else.", "Delight in causing destruction and suffering, reveling in the chaos and misery that result from one's actions.", "Deliberately sow discord and conflict among others, enjoying the chaos and turmoil that result from their strife."];
ce = Alignment.new(name: "Chaotic Evil", descriptors: ce_descriptors, titles: ce_titles, tenets: ce_tenets)
ce.x_alignment = c;
ce.y_alignment = e;
ce.save
puts "Chaotic Evil created"


# Create Domains
puts "-- Creating Domains"
life_descriptors = ["Healing", "Giving", "Helping", "Aiding", "Flourishing", "Mending", "Merciful", "Kind", "Joyful", "Spiritual"];
life_titles = ["Hand", "Guide", "Savior", "Touch", "Healer", "Salvation", "Caregiver", "Lifegiver", "Reprieve", "Calm"];
life_tenets = ["Your job as a healer is never-ending, your mission to seek out those that need your skills.", "Learn of medecine and add to the knowledge of the faithful, so that you may improve your own work and the works of others in time.", "Once you complete treatment of the symptoms of those you heal, seek the truest cure to those ailments where you can, be it in the one healed or the world they come from.", "You must alot time to healing as charitable assistance, wherever possible and practical.", "Observe the medical world an discoveries that are made wherever they may occur, and study the worlds many ailments, rots and diseases. An enemy understood is an enemy that is nearing defeat.","Do not injure unless you know and are ready to provide the cure to that injury.", "Foster new life where possible, and promote the creation and protection of new life in the world.", "Teach others how to heal, and in time you may heal the world", "Treatment of the body is quite obvious, but do not neglect treatment of the mind and spirit also. Communicate and strive for understanding of one another, and do not flee from connection.", "Your body is a temple in itself- treat it well and right, and understand it all the more when it is in need of repair or improvement." ];
Domain.create!(name: "Life", descriptors: life_descriptors, titles: life_titles, tenets: life_tenets )
puts "Life created"

arcana_descriptors = ["Magical", "Mystical", "Enchanting", "Great", "All-knowing", "Mysterious", "Boundless", "Wise", "Otherworldly", "Cosmic"];
arcana_titles = ["Arcane", "Sage", "Diviner", "Seer", "Diviner", "Master", "Weaver", "Mage", "Scrollmaster", "Teacher", "Entity"];
arcana_tenets = ["Embrace the pursuit of arcane wisdom and understanding. Encourage the study of magic in all its forms.", "Safeguard magical knowledge from those who would seek to disrupt or abuse it.", "Stand against those who would seek to suppress or extinguish magic from the world. Protect magical knowledge and artifacts from destruction or misuse.", "Encourage innovation and experimentation within the bounds of your gods ethical guidelines, if any. Inspire creativity and ingenuity in the development of new spells and magical techniques.", "Every month, you must sacrifice a scroll of magical power you have found or written, via ritual or donation to the faith's order.", "Acknowledge and respect the origins of magic, whether it be through divine providence, natural forces, or cosmic energies. Treat the source of magic with reverence and gratitude.", "Use your arcane abilities responsibly and with care. Understand the consequences of your actions and wield magic for the greater good, avoiding unnecessary harm or disruption.", "Safeguard the secrets of magic from those who would misuse or exploit them for nefarious purposes. Exercise discretion in sharing arcane knowledge and only reveal it to those deemed worthy and trustworthy.", "Cultivate a spirit of curiosity and exploration, delving into the mysteries of magic with an open mind and a thirst for discovery. Remain ever-curious and unafraid to explore the unknown.", "Work towards uniting practitioners of magic, regardless of their traditions or beliefs. Foster cooperation and understanding among magical communities to strengthen the bonds of arcane knowledge."];
Domain.create!(name: "Arcana", descriptors: arcana_descriptors, titles: arcana_titles, tenets: arcana_tenets )
puts "Arcana created"

war_descriptors = ["Supreme", "Bloodthirsty", "Undefeated", "Iron", "Mighty", "Valiant", "Indomitable", "Unyielding", "Relentless", "Proud"];
war_titles = ["Warlord", "Fury", "General", "Vanquisher", "Marshal", "Warrior", "Lord", "Fury"];
war_tenets = ["Uphold honor and integrity on the battlefield. Show respect for worthy opponents and face them will all your own skill and power, for to not do so is disrespect most shameful.", "Embrace discipline and training to hone your skills as a warrior and gain strength wherever you can, whenever you can. Strive for excellence in both mind and body.", "Forge bonds of camaraderie and loyalty with your fellow warriors. Together, stand as an indomitable force against adversity.", "Pay tribute to those who have fallen in battle. Honor their memory and ensure that their sacrifices are never forgotten through rituals or keepsakes.", "Fight not for personal glory alone, but for a greater cause or ideal. Dedicate your strength to the defense of justice, freedom, or the protection of your people.", "Pursue victory with unwavering determination. Spare no effort in achieving triumph on the battlefield.", "Be flexible and adaptable in the face of adversity. Embrace change and innovation to overcome challenges on the battlefield when needs arise in order to secure victory.", "Honor the spoils of victory, for that which has been taken through battle must be respected, and to act against those that have earned that right, or steal their spoils, is shameful.", "Maintence of your weapons and armour, and those of your allies, is a divine duty. A well-sharpened blade is a blessed blade.", "A quick prayer must be made before each battle you are involved in, if possible, or after each battle if not."];
Domain.create!(name: "War", descriptors: war_descriptors, titles: war_titles, tenets: war_tenets )
puts "War created"

# _descriptors = [];
# _titles = [];
# _tenets = [];
# Domain.create!(name: "", descriptors: _descriptors, titles: _titles, tenets: _tenets )
# puts " created"


def make_name
  n = rand(1..4)
  components = ["A", "Zu", "Ta", "Re", "Mas"]
  name = ''
  n.times do
    name = name + components.sample
  end
  return name
end


#Create God
puts "Creating God"
new_god = God.new(name: make_name, alignment: Alignment.all.sample, domain: Domain.all.sample)
god_descriptors = new_god.alignment.descriptors + new_god.alignment.x_alignment.descriptors + new_god.alignment.y_alignment.descriptors  + new_god.domain.descriptors
god_titles = new_god.alignment.titles + new_god.alignment.x_alignment.titles + new_god.alignment.y_alignment.titles  + new_god.domain.titles
new_god.epitaph = "The #{god_descriptors.sample} #{god_titles.sample}"
god_tenets = new_god.domain.tenets
god_tenets.shuffle!
new_god.tenets << god_tenets.pop
god_tenets = god_tenets + new_god.alignment.tenets + new_god.alignment.x_alignment.tenets + new_god.alignment.y_alignment.tenets
3.times do
  god_tenets.shuffle!
  new_god.tenets << god_tenets.pop
end
new_god.save
puts "God created."
puts "Seeding complete."

class Follower < ApplicationRecord
  belongs_to :god
  belongs_to :alignment

  ALIGNMENTS = Alignment.all
  RACES = ["Human", "Elf", "Half-Elf", "Dwarf", "Halfling", "Gnome", "Half-orc", "Tiefling", "Dragonborn"]
  GENDERS = ["Male", "Female"]
  PROFESSIONS = ["Priest", "Cleric", "Sage", "Mystic", "Hermit", "Scholar", "Heretic", "Champion", "Paladin", "Knight", "Scion", "Prophet", "Zealot", "Devout", "Chosen", "Demigod"]
end

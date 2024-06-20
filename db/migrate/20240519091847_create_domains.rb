class CreateDomains < ActiveRecord::Migration[7.1]
  def change
    create_table :domains do |t|
      t.string :name
      t.string :descriptors, array: true, default: []
      t.string :titles, array: true, default: []
      t.string :tenets, array: true, default: []
      t.string :themes, array: true, default: []
      t.string :ability_one, array: true, default: []
      t.string :ability_two, array: true, default: []
      t.string :ability_two_weapon, array: true, default: []
      t.string :ability_two_armor, array: true, default: []
      t.string :ability_three, array: true, default: []
      t.string :ability_three_weapon, array: true, default: []
      t.string :ability_three_armor, array: true, default: []
      t.string :quest_two, array: true, default: []
      t.string :quest_three, array: true, default: []
    end
  end
end

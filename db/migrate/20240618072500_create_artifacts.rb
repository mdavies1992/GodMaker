class CreateArtifacts < ActiveRecord::Migration[7.1]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.references :god, foreign_key: true
      t.references :item_type, foreign_key: true
      t.text :quest_one
      t.text :quest_two
      t.text :quest_three
      t.text :ability_one
      t.text :ability_two
      t.text :ability_three
    end
  end
end

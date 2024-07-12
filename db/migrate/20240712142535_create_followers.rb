class CreateFollowers < ActiveRecord::Migration[7.1]
  def change
    create_table :followers do |t|
      t.string :name
      t.references :god, null: false, foreign_key: true
      t.references :alignment, null: false, foreign_key: true
      t.string :gender
      t.string :species
      t.string :profession
      t.string :description
    end
  end
end

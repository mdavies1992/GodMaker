class CreateGods < ActiveRecord::Migration[7.1]
  def change
    create_table :gods do |t|
      t.string :name
      t.string :epitaph
      t.string :tenets, array: true, default: []
      t.string :themes, array: true, default: []
      t.references :alignment, null: false, foreign_key: true
      t.references :domain, null: false, foreign_key: true
      t.timestamps
    end
  end
end

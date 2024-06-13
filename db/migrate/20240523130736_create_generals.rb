class CreateGenerals < ActiveRecord::Migration[7.1]
  def change
    create_table :generals do |t|
      t.string :names, array: true, default: []
      t.string :themes, array: true, default: []
      t.string :descriptions, array: true, default: []
      t.string :titles, array: true, default: []
      t.timestamps
    end
  end
end

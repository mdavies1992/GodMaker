class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :category
      t.string :titles, array: true, default: []
    end
  end
end

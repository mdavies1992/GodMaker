class CreateItemTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :item_types do |t|
      t.string :name
      t.string :itemclass
      t.string :i_titles, array: true, default: []
    end
  end
end

class CreateAlignments < ActiveRecord::Migration[7.1]
  def change
    create_table :alignments do |t|
      t.string :name
      t.references :x_alignment, foreign_key: true
      t.references :y_alignment, foreign_key: true
      t.string :descriptors, array: true, default: []
      t.string :titles, array: true, default: []
      t.string :tenets, array: true, default: []
    end
  end
end

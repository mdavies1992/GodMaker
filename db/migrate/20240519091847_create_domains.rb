class CreateDomains < ActiveRecord::Migration[7.1]
  def change
    create_table :domains do |t|
      t.string :name
      t.string :descriptors, array: true, default: []
      t.string :titles, array: true, default: []
      t.string :tenets, array: true, default: []
    end
  end
end

class AddRandomDomain < ActiveRecord::Migration[7.1]
  def change
    add_column :gods, :random_domain, :boolean
  end
end

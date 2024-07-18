class AddRandomSelectionsToFollowers < ActiveRecord::Migration[7.1]
  def change
    add_column :followers, :random_name, :boolean
    add_column :followers, :random_alignment, :boolean
    add_column :followers, :random_species, :boolean
    add_column :followers, :random_profession, :boolean
    add_column :followers, :random_gender, :boolean
  end
end

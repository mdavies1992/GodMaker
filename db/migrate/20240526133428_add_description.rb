class AddDescription < ActiveRecord::Migration[7.1]
  def change
    add_column :gods, :description, :text
  end
end

class AddPrompt < ActiveRecord::Migration[7.1]
  def change
    add_column :gods, :prompt, :string
    add_column :gods, :img_prompt, :string
  end
end

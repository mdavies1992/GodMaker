class AddRandomTypeToArtifacts < ActiveRecord::Migration[7.1]
  def change
    add_column :artifacts, :random_type, :boolean
  end
end

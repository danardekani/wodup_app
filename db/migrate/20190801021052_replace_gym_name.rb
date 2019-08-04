class ReplaceGymName < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :gym, :string
    add_column :users, :busienss, :string
  end
end

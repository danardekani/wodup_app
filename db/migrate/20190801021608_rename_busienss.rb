class RenameBusienss < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :busienss, :business
  end
end

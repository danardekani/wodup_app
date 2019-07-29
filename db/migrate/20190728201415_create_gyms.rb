class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :gym_name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :user_name
      t.string :password
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :website_url

      t.timestamps
    end
  end
end

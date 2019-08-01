class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :birth_date
      t.string :height
      t.string :weight
      t.string :user_name
      t.string :password
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :address
      t.string :email
      t.string :gym
      

      t.timestamps
    end
  end
end

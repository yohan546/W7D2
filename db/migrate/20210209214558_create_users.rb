class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false 
      t.string :session_token, null: false 

    end

    add_index :users, :email 
    add_index :users, :session_token, unique: true
     
  end
end

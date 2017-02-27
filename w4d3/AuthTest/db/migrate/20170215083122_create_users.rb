class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
    add_index :users, :password_digest
    add_index :users, [:username, :password_digest], unique: true
  end
end
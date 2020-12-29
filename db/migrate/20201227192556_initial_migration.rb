class InitialMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :user_id, null: false
      t.string  :login, null: false
      t.string  :password, null: false
      t.string  :email
      t.timestamps  #created at
    end

    create_table :documents do |t|
      t.integer :doc_id, null: false
      t.integer :user_id, null: false
      t.string :name
      t.references  :users, null: false
      t.timestamps  #created at
    end
  end
end

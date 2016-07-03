class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps null: false
    end
    add_index :chats, :sender_id
    add_index :chats, :receiver_id
  end
end

class CreateTextgrams < ActiveRecord::Migration
  def change
    create_table :textgrams do |t|
      t.text :message
      t.references :chat, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.text :URL
      t.string :topic
      t.string :annotation
      t.datetime :dt

      t.timestamps null: false
    end
  end
end

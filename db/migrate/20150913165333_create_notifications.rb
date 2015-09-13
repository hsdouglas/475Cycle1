class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.integer :shift_id
      t.integer :shift_type
      t.text :message

      t.timestamps
    end
  end
end

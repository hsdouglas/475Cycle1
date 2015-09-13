class CreateClosedShifts < ActiveRecord::Migration
  def change
    create_table :closed_shifts do |t|
      t.integer :open_shift_id
      t.integer :new_assignee_id
      t.datetime :claimed

      t.timestamps
    end
  end
end

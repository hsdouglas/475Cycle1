class CreateOpenShifts < ActiveRecord::Migration
  def change
    create_table :open_shifts do |t|
      t.integer :set_shift_id
      t.integer :original_assignee_id
      t.datetime :opened
      t.boolean :is_trade?
      t.boolean :is_request?
      t.boolean :is_cover?
      t.boolean :active

      t.timestamps
    end
  end
end

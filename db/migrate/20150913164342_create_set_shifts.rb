class CreateSetShifts < ActiveRecord::Migration
  def change
    create_table :set_shifts do |t|
      t.integer :assignee_id
      t.integer :assigner_id
      t.datetime :start
      t.datetime :end
      t.boolean :is_PTO?

      t.timestamps
    end
  end
end

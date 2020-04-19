class CreateDispatches < ActiveRecord::Migration[6.0]
  def change
    create_table :dispatches do |t|
      t.date    :delivery_day,       null: false
      t.string  :delivery_time,      null: false
      t.string  :delivery_target,    null: false
      t.string  :truck_num,          null: false
      t.text    :remarks
      t.integer :worker_id,          null: false
      t.timestamps
    end
  end
end

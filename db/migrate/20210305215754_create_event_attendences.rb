class CreateEventAttendences < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendences do |t|

      t.integer :guest_id
      t.integer :event_id
      t.timestamps
    end
  end
end

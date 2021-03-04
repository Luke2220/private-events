class EventAssocation < ActiveRecord::Migration[6.1]
  def change
   
     add_column :events, :host_id, :integer
     add_column :events, :guest_id, :integer
  
  end
end

class AddInvitation < ActiveRecord::Migration[6.1]
  def change
    add_column :event_attendences, :accept_invitation, :bool
  end
end

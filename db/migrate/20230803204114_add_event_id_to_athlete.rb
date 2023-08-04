class AddEventIdToAthlete < ActiveRecord::Migration[7.0]
  def change
    add_column :athletes, :event_id, :integer
  end
end

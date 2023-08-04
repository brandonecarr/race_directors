class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :event_date
      t.time :start_time
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.text :about
      t.string :website

      t.timestamps
    end
  end
end

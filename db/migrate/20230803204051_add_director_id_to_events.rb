class AddDirectorIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :director_id, :integer
  end
end

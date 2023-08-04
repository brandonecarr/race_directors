class AddCompanyNameToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :company_name, :string
  end
end

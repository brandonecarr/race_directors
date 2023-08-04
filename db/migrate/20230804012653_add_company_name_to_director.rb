class AddCompanyNameToDirector < ActiveRecord::Migration[7.0]
  def change
    add_column :directors, :company_name, :string
  end
end

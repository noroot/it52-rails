class AddCorporateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :is_corporate, :boolean
  end
end

class AddFlagsCountToSites < ActiveRecord::Migration
  def change
    add_column :sites, :captured_flags, :integer
    add_column :sites, :uncaptured_flags, :integer
  end
end

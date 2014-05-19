class RemoveFieldsFromSignups < ActiveRecord::Migration
  def change
    remove_column :signups, :interesting_fact
    remove_column :signups, :experience
    remove_column :signups, :picture
  end
end

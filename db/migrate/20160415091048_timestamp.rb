class Timestamp < ActiveRecord::Migration
  def change
	change_column :Bank_data, :created_at, :timestamp
  end
end

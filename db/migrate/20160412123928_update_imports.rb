class UpdateImports < ActiveRecord::Migration
  def change
	add_column :Import, :name, :string
  end
end

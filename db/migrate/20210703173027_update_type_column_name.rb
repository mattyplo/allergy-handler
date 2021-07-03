class UpdateTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :snacks, :type, :snack_type
    rename_column :snacks, :class, :snack_class
  end
end

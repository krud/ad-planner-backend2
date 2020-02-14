class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :maxCapacity, :max_capacity
  end
end

class ChangeStateTypeInStatuses < ActiveRecord::Migration
  def change
    change_column :statuses, :state, :integer, limit: 1, null: false, default: 0
  end
end

class ChangeStateTypeInStatuses < ActiveRecord::Migration
  def change
    change_column :statuses, :state, :integer, default: 0
  end
end

class FixupChangeStatusesMigration < ActiveRecord::Migration
  def change
    change_column :statuses, :state, :integer, default: nil
  end
end

class FixupChangeStatusesMigration < ActiveRecord::Migration
  def change
    change_column :statuses, :state, 'integer USING CAST(state AS integer)'
  end
end

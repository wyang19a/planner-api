class RemoveTimeFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :time, :datetime
  end
end

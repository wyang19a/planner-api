class AddTtoToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :Tto, :datetime
  end
end

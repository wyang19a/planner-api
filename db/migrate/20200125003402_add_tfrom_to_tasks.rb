class AddTfromToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :Tfrom, :datetime
  end
end

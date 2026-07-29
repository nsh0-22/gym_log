class AddMemoToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :memo, :text
  end
end

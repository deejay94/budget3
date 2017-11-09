class AddGoalToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_column :budgets, :goal, :integer
  end
end

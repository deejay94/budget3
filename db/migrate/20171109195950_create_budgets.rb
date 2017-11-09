class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.integer :goal
      t.integer :actual

      t.timestamps
    end
  end
end

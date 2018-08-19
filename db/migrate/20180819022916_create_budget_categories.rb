class CreateBudgetCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :budget_categories do |t|

      t.timestamps
    end
  end
end


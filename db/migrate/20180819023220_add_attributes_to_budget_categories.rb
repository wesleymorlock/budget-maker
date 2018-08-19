class AddAttributesToBudgetCategories < ActiveRecord::Migration[5.1]
  def change
  	add_column :budget_categories, :budget_id, :integer
  	add_column :budget_categories, :name, :string
  	add_column :budget_categories, :amount, :integer

  	add_foreign_key :budget_categories, :budgets
  end
end

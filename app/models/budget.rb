class Budget < ApplicationRecord

	has_many :budget_categories, dependent: :destroy
	accepts_nested_attributes_for :budget_categories #, update_only: true

	validates_presence_of :name
	validates_uniqueness_of :name # will later need to scope these to "accounts"

	def update_budget_categories(budget_categories_params)
		return if budget_categories_params.nil?

		budget_categories_params.each do |index|
			budget_category = BudgetCategory.find(budget_categories_params[index]["id"])
			budget_category.amount = budget_categories_params[index]["amount"]
			budget_category.save
		end
	end
end

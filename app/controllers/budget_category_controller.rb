class BudgetCategoryController < ApplicationController
	before_action :load_budget_category, only: [:show]
	before_action :load_budget, only: [:create]

	def show
	end

	def new
		@budget_category = BudgetCategory.new
	end

	def create
		@budget_category = BudgetCategory.new(budget_category_params)

		@budget_category.budget = @budget

		if @budget_category.save
			redirect_to budget_path(@budget)
		else
			render 'new'
		end
	end

	private

	def load_budget_category
		@budget_category = BudgetCategory.find(params[:id])
	end

	def load_budget
		@budget = Budget.find(params[:budget_id])
	end

	def budget_category_params
		params.require(:budget_category).permit(:name, :amount)
	end

end

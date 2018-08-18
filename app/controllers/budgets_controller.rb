class BudgetsController < ApplicationController
	def show
		@budget = Budget.find(params[:id])
	end

	def index
		@budgets = Budget.all
	end

	def new
		@budget = Budget.new
	end

	def create
		puts params
		@budget = Budget.new(budget_params)

		if @budget.save
			redirect_to @budget
		else
			render 'new'
		end
	end

	private

	def budget_params
    params.require(:budget).permit(:name)
  end
end

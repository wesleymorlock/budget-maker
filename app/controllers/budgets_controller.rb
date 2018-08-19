class BudgetsController < ApplicationController
	before_action :load_budget, only: [:show, :edit, :update]

	def show
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

	def edit
	end

	def update
    if @budget.update(budget_params)
      redirect_to @budget
    else
      render 'edit'
    end
	end

	private

	def budget_params
    params.require(:budget).permit(:name, :budget_categories)
  end

  def load_budget
  	@budget = Budget.find(params[:id])
	end
end

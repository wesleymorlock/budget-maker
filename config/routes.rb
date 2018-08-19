Rails.application.routes.draw do
  get 'app/index'

  resources :budgets do
	  resources :budget_categories, controller: 'budget_category'
	end

  root 'app#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

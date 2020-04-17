Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :math_questions, only: [:index]
  resources :jokes, only: [:index, :show]
  resources :date_facts, only: [:index]
  resources :number_facts, only: [:index]
  resources :trivia, only: [:index, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

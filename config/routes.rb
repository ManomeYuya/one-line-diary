Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "diaries#index"
  resources :diaries, only:[:index, :new]
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
    end
  end  
  
  resources :recipe_steps
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

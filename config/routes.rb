HowTo::Application.routes.draw do

  resources :recipes do
    resources :steps
  end

  root to: 'recipes#index'


end

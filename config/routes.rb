Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  
  resources :blogs do
    member do 
      get :toggle_status
    end
  end

root to: 'pages#home'
end

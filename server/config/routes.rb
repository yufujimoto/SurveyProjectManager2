Rails.application.routes.draw do
  resources :materials
  resources :fileobjects
  devise_for :users

  resources :projects
  resources :consolidations
  
  root 'projects#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

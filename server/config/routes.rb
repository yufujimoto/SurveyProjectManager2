Rails.application.routes.draw do
  resources :consolidations
  devise_for :users
  resources :projects
  root 'projects#index' #それぞれのパスに設定
  
  # post 'new_consolidation' => 'consolidations#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

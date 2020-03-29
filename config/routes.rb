Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
    get 'users/sign_up' => 'users#new'
    post 'users/sign_up' => 'users#create'
    resources :users
end

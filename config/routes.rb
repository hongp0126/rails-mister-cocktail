Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :index, :show, :new, :edit, :destroy ]

  # mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

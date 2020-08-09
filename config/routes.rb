Rails.application.routes.draw do
  get 'pages/information'
  root to: redirect('/blogs')
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

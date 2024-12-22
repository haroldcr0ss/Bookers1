# see over アプリケーション4章
# see over アプリケーション5章
# see over アプリケーション7章

Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books/new'
  get 'books' => 'books#index'
  get 'books/show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  # get 'https://bookers-level1.herokuapp.com', to: 'homes#top'
  # get "/books/:id", to "books#show"
  resources :books
end

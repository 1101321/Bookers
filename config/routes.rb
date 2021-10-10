Rails.application.routes.draw do
  root :to => 'homes#top'
  
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  get '/books' => 'books#new', as: 'new_book'
  get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/books/:id' => 'books#show', as: 'book'
  patch '/books/:id' => 'books#update'
  put 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'

  get 'users' => 'users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'resume', to: 'static_pages#resume'

  resource :contacts, :path => '/contact', only: [:new, :create]
end

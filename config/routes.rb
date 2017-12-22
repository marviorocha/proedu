Rails.application.routes.draw do


  resources :comments
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
    }
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'page#index'

# admin routes
resources :admin_users

#messager resources
resources :messager

#content resources
resources :contents

get '/contents/:id/duplicate', to: 'contents#duplicate', as: 'content_clone'

#content curse
resources :curses

end

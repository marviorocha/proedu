Rails.application.routes.draw do



  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
    }


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'page#index'

# admin routes

resources :users, module: 'users'


#messager resources
resources :messagers

#content resources
resources :contents

get '/contents/:id/duplicate', to: 'contents#duplicate', as: 'content_clone'

#categories Category
resources :curses

#content curse
resources :categories

#studant curse
get '/curses/:id/list', to: 'curses#list', as: 'curse_list'



end

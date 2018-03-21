Rails.application.routes.draw do



devise_for :users, controllers: { sessions: 'users/sessions' }

get '/users/sign_up/:id', to: 'users#new', as: 'user_new'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'page#index'

# admin routes

resources :users, module: 'users'


#messager resources
resources :messagers

#content resources
resources :contents

resources :progresses



get '/contents/:id/duplicate', to: 'contents#duplicate', as: 'content_clone'

#categories Category
resources :categories

#content curse
resources :curses

#studant curseuglifier
get '/:id/list', to: 'curses#list', as: 'curse_list'
get '/:id/home', to: 'curses#home', as: 'curse_home'


end

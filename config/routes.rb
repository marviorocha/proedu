Rails.application.routes.draw do


 
 
root to: 'page#index'

# admin routes

devise_for :users


get '/users/sign_up/:id', to: 'users#new', as: 'user_new'

#messager resources
resources :messagers

#content resources
resources :contents

resources :progresses

resources :users

get '/contents/:id/duplicate', to: 'contents#duplicate', as: 'content_clone'

#categories Category
resources :categories

#content curse
resources :curses

#studant curseuglifier
get '/:id/list', to: 'curses#list', as: 'curse_list'
get '/:id/home', to: 'curses#home', as: 'curse_home'


end

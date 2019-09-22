class UsersController < ApplicationController
   
#    generator users
    def index
        @users = User.where(studant_role: true)
    end 
end

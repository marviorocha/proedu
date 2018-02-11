class Users::UsersController < ApplicationController

before_action :find_user, only: [:destroy, :show, :update, :destroy]


# GET /users
def index
@users = User.all
 
end

# GET /users/new
def new
@users = User.new
end

# GET /users/1
def show
end

# POST /users
def create

respond_to do |format|
format.html { redirect_to users_path, notice: "User was create with sucess"}
 end
end

# DELETE /users/1
def destroy
  @users.destroy
  respond_to do |format|
    format.html { redirect_to @users, notice: "User was destroy with success"}
  end

end




private


def find_user
@users = User.find(params[:id])
end

def set_users
params.require(:user).permit(:name, :lastname, :email)
end


end

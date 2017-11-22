class UsersController < ApplicationController

def index

@user = User.all

end

def new
  @user = User.new
end

def create
  if User.create(users_params)
    flash['notice'] = "Usuário criado com sucesso"
    redirect_to users_path
  end

end

private

def users_params
  params.require(:user).permit(:email, :password)
end


end

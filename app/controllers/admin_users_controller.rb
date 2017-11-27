class AdminUsersController < ApplicationController

def index

  @adminuser = User.all

end

def new
  @adminuser = User.new
end

def create
 
  if @adminuser
    flash['notice'] = "Usuário criado com sucesso"
    redirect_to users_path
  end

end

private

def users_params
  params.require(:user).permit(:email, :password)
end


end

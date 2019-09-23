class UsersController < ApplicationController
    
    before_action :set_params_user_id, only: ['destroy'] 
#    generator users
    def index
        @users = User.where(studant_role: true)
    end 

    def destroy 

        @user.destroy

        respond_to do |format|
            format.js
            format.html { redirect_to users_path, notice: 'Usuário foi deletado com sucesso!'}
        end
    end

    private

    def set_params_user_id
        @user = User.find(params['id'])
    end    

    def set_user_params
    params.require(:user).permit(:name, :lastname, :email, :password)
    end


end

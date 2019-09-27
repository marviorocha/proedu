class UsersController < ApplicationController
    
    before_action :set_params_user_id, only: ['destroy', 'show'] 
#    generator users
    def index
        @users = User.where(studant_role: true)
    end 

    def destroy 

        @users.destroy

        respond_to do |format|
            format.js
            format.html { redirect_to users_path, notice: 'Usuário foi deletado com sucesso!'}
        end
    end

    def show
    end

    private

    def set_params_user_id
        @users = User.find(params['id'])
    end    

    def set_user_params
    params.require(:user).permit(:name, :lastname, :email, :password)
    end


end
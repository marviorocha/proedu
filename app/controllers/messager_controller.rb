class MessagerController < ApplicationController

  before_action :set_messager, :messager_params, only: [:show, :edit, :update, :destroy]

  def index

    @messager = current_user.messager

  end

  def new
    @messager = Messager.new
  end

  def show
    #code
  end

  def show
    #code
  end

  def update
    #code
  end

  def destroy

    @messager.destroy
    respond_to do |format|
      format.html {redirect_to mensager_index_path, notice: "A mensagem foi apagado com sucesso!"}
      format.json { head :no_content  }
    end

  end

  private

  def set_messager
    @messager = current_user.messager.find(params[:id])
  end

  def messager_params
    params.require(:messager).permit(:subject, :body, :user_id)
  end

end

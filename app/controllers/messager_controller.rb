class MessagerController < ApplicationController

  before_action :set_messager, only: [:show, :edit, :update, :destroy]

  def index

    @messager = current_user.messager

  end

  def new
    @messager = Messager.new
  end

  def create
    @messager =  Messager.new(messager_params)
    
    respond_to do |format|
      if @messager.save
        format.html { redirect_to @messager, notice: 'Mensagem enviado com sucesso!' }
        format.json { render :show, status: :created, location: @messager }
      else
        format.html { render :new }
        format.json { render json: @messager.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy

    @messager.destroy
    respond_to do |format|
      format.html {redirect_to messager_path, notice: "A mensagem foi apagado com sucesso!"}
      format.json { head :no_content  }
    end

  end

  private

  def set_messager
    @messager = Messager.find_by(params[:id])
  end

  def messager_params
    params.require(:messager).permit(:subject, :body, :user_id)
  end

end

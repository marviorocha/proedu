class CursesController < ApplicationController

  before_action :set_curse, only: [:destroy, :show, :edit, :update, :home ]

  def index

    @curses = Curse.all

  end


  def new
    @curse = Curse.new
  end


  def create

    @curse = Curse.new(set_params)

    respond_to do |format|

      if @curse.save
        format.html {redirect_to curses_path, notice: 'Curso foi criado com sucesso!'}
      else
        format.html {render 'new'}
        flash.alert = @curse.errors.full_messages.to_sentence

      end
    end
  end

  def register
    @curse = Curse.find(params[:id])
    @curse.users << current_user
    redirect_to curses_path, notice: "Você foi cadastrado #{ @curse.title }!"
  end

  def show
    @licao = @curse.contents.order(publish_on: :asc)
    @progress = current_user.content.where(curse_id: @curse.id)
    
  end



  def home

    board

  end


  def edit

  end



  def update

    respond_to do |format|
      if @curse.update(set_params)

        format.html {redirect_to curses_path, notice: 'Curso foi atualizado com sucesso!'}


      else
        format.html { render :edit}


      end
    end
  end

  def destroy
    @curse.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to curses_path, notice: 'O curso foi deletado com sucesso!'}

    end
  end


  private

  def set_curse
    @curse = Curse.find(params[:id])
  end

  def set_params
    params.require(:curse).permit(:title, :descricao, :picture, :uid, :category_id)

  end


end

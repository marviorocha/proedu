class CursesController < ApplicationController
include OnesignalHelper
include CursesHelper
before_action :set_curse, only: [:destroy, :show, :edit, :update, :home ]

def index
@curses = Curse.all

end


def new
@curse = Curse.new
end

def show



end

def list
@curses = current_user.curse

end

def home

board

end


def edit

end

def create
  @curse = Curse.new(set_params)

  respond_to do |format|
    if @curse.save
    @curse.picture.url # => '/url/to/file.png'

    format.html { redirect_to curses_path, notice: 'Curse foi criado com sucesso!'}
    format.json { render :index, status: :created, location: @curse }
  else
    format.html { render :new}
    format.json {render json: @curse.errors, status: :unprocessable_entity}
    end
  end
end

def update
   respond_to do |format|
     if @curse.update(set_params)
     format.html {redirect_to curses_path, notice: 'Curso foi atualizado com sucesso!'}
     format.json { render :index, status: :edited, location: @curse }
     notification(@curse.title, 'http://cursos.faap.br/images/turmas-confirmadas-icon.png', 'Vamos ver se agora vai #{ @curses.title}')

    else
      format.html { render :edit}
      format.json { render json: @curse.errors, status: :unprocessable_entity}

    end
  end
end

def destroy
@curse.destroy
  respond_to do |format|
    format.html { redirect_to curses_path, notice: 'O curso foi deletado com sucesso!'}
    format.json { render :show, status: :created, location: @curse }
  end
end


private

def set_curse
  @curse = Curse.find(params[:id])
end

def set_params
  params.require(:curse).permit(:title, :descricao, :picture, :category_id)
  params.require(:progress).permit(:user_id, :content_id, :progress)
end


end

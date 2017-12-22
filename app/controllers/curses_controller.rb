class CursesController < ApplicationController

before_action :set_params, only: [:destroy, :show, :edit, :show ]

def index
@curses = Curse.all
end


def new
@curse = Curse.new
end

def show
end

def create
  @curse = Curse.new(set_params)
  respond_to do |format|
    if @curse.save
    format.html { redirect_to curses_path, notice: 'Curse foi criado com sucesso!'}
    format.json { render :index, status: :created, location: @curse }
  else
    format.html { render :new}
    format.json {render json: @curse.errors, status: :unprocessable_entity}
    end
  end
end


def destroy
  @curse = Curse.find(set_params)
  respond_to do |format|
    if @curse.destroy
    format.html { redirect_to curses_path, notice: 'O curso foi deletado com sucesso!'}
    format.json { render :show, status: :created, location: @curse }
  else
    format.html {render :new}
    format.json {render json: @curse.errors, status: :unprocessable_entity}
    end
  end
end


private

def set_curse
  @curse = Curse.find(params[:id])
end

def set_params
  params.require(:curse).permit(:title, :descricao, :picture)
end


end

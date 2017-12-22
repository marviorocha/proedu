class CursesController < ApplicationController

before_action :set_curse, only: [:destroy, :show, :edit, :update ]

def index
@curses = Curse.all
end


def new
@curse = Curse.new
end

def show
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
  params.require(:curse).permit(:title, :descricao, :picture)
end


end

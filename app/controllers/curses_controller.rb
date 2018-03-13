class CursesController < ApplicationController
include OnesignalHelper
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
@curses = current_user.curse


@days_for = Content.all

@days_for.each do |data|

@current_time = Time.zone.now
@inscricaodate = current_user.created_at - 21.hour
@userday = (@current_time.to_i - @inscricaodate.to_i).to_i / data.days.days

#@datenow = (Time.zone.now..@inscricao)
#puts @datanow
@day_to_publish =  Content.where('days >= ?',@userday)

@contents =  Content.where("days <= ?",@userday).where("publish_on <= ?",@current_time )
@unpublish = Content.unpublish(@current_time)


# End each
end





#notification(signal.title, "https://images.cdn2.stockunlimited.net/clipart/alarm-icon_2005848.jpg",
#{}"uma nova aula você pode assistir assessando seu dashboard", @data_on )



# Send OneSignal





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
end


end

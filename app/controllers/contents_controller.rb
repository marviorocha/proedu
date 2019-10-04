class ContentsController < ApplicationController

before_action :set_params_contents, only: [:edit, :show, :destroy, :update]    

def index
    @contents = Curse.all
end

def curses
    @curse = Curse.find(params[:id])
    @contents = @curse.contents
end


def show 

end

def new
    @content = Content.new
end


def create
    @content = Content.new(params_contents)
   
    respond_to do |format|
        if @content.save 
         format.html {redirect_to contents_path, notice: "Lição [#{@content.id}] foi criado com sucesso"}
        else
          flash.alert = @content.errors.full_messages.to_sentence
          format.html {render 'new'}       
        end
   
    end
end


def edit


end

def update

    respond_to do |format|
        if @content.update(params_contents)
            format.html {redirect_to curses_content_path(@content.curse_id), notice: 'Lição foi atualizada com sucesso'}
        else
            format.html {render 'edit', alert: @content.errors.full_messages.to_sentence}
        end
    end



end

def destroy

end

private

def set_params_contents

    @content = Content.find(params[:id])

end

def params_contents

    params.require(:content).permit(:title, :body, :doc, :publish, :publish_on, :curse_id)

end



# // end class for ContentsController
end 

class ContentsController < ApplicationController

before_action :set_params_contents, only: [:edit, :show, :destroy, :update]    

def index
    @contents = Content.curse
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

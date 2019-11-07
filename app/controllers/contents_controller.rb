class ContentsController < ApplicationController
    
    before_action :set_params_contents, only: [:edit, :show, :destroy, :update, :duplicar]    
    
    def index
      @contents = Curse.order(:title).page params[:page]
    end
    
    def curses
        @curse = Curse.find(params[:id])
        @contents = @curse.contents.order(:title).page params[:page]
    end
    
    
    def show
        @curse = Curse.find(params[:id])
        @pag = @curse.contents
    end
    
    def new
        @content = Content.new
    end
    
    
    def create
        @content = Content.new(params_contents)
        
        respond_to do |format|
            if @content.save 
                Content.unpublished.update(publish: false)
                format.html {redirect_to curses_content_path(@content.curse_id), notice: "Lição [#{@content.id}] foi criado com sucesso"}
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
                Content.unpublished.update(publish: false)
                format.html {redirect_to curses_content_path(@content.curse_id), notice: 'Lição foi atualizada com sucesso'}
            else
                format.html {render 'edit', alert: @content.errors.full_messages.to_sentence}
            end
        end
        
        
        
    end
    
    def duplicar

        respond_to do |format|
            if @content.dup.save
             @content.update(title: "#{@content.title} [Cópia #{@content.id}] ")
              
               format.html {redirect_to curses_content_path(@content.curse_id), notice: 'A lição foi duplicada com sucesso' }

            end
        end

    end


    def destroy

        respond_to do |format|
            if @content.destroy 
                format.js
                format.html {redirect_to curses_content_path(@content.curse_id)}
            end
        end
        
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

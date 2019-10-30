class ProgressesController < ApplicationController

before_action :set_progress, only: ['edit', 'update', 'destroy', 'show' ]


def edit 

  @conclued = current_user.content << @progress  
  
  if @conclued  
    redirect_to curse_path(@progress.curse), notice: " #{@progress.title} foi marcado como concluída!"
  else 
    redirect_to curse_path(@progress.curse), alert: "Não foi possível marcar como concluída!"  
  end 

end




def set_progress

  @progress = Content.find(params[:id])  

end

end

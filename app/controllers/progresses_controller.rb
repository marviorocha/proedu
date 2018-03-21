class ProgressesController < ApplicationController

before_action :set_params, only: []


def create
respond_to do |format|
 @progress = Progress.new(set_params)
  if @progress.save
  format.html {redirect_to curse_home_path(current_user), notice: "Você marcou está lição como concluída!" }
  else
  format.html { redirect_to curse_home_path(current_user), alert: "Não foi possível marcar como concluída!" }
  format.json { render json: @content.errors, status: :unprocessable_entity }
  end
end


end

private


def set_params
  params.require(:progress).permit(:content_id, :user_id, :progress)
end

end

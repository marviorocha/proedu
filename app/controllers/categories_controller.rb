class CategoriesController < ApplicationController

before_action :set_category, only: [:edit, :destroy, :show, :update]

  def index
    @category = Category.all
  end

  def edit

  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(set_params)
    respond_to do |format|
      if @category.save
      format.html {redirect_to categories_path, notice: 'Category was created with successfully'}
    else
      format.html {render :new}
      format.json {render json: @curse.errors, status: :unprocessable_entity}
    end
    end
  end

  def update
  end

  def destroy

    @category.destroy
   respond_to do |format|
     format.html { redirect_to categories_path, notice: 'A categoria foi deletado com sucesso!'}
     format.json { render :show, status: :created, location: @curse }
   end

  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def set_params
    params.require(:category).permit(:name)
  end



end

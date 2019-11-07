class CategoriesController < ApplicationController
  
  before_action :set_category, only: [:edit, :destroy, :show, :update]
  
  def index
    @category = Category.order(:name).page(params[:page])
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
        flash.alert = @category.errors.full_messages.to_sentence 
        format.html {render :new}
        
      end
    end
  end
  
  def update
    respond_to do |format|
      if @category.update(set_params)
        format.html {redirect_to categories_path, notice: 'Categoria foi atualizada com sucesso!'}
      else
        format.html {render 'edit', alert: @category.error.full_messages.to_sentence }
      end
    end
  end   
    def destroy
      
      respond_to do |format|
        if @category.destroy
          format.js
          format.html { redirect_to categories_path, notice: 'A categoria foi deletadado com sucesso!'}
        end
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
  

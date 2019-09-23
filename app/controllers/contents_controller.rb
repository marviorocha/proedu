class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy, :duplicate]

  # GET /contents
  # GET /contents.json
  def index

    @contents = Content.licao(params['curse']).references(:content)

  end

  # GET /contents/1
  # GET /contents/1.json
  def show
      @progress = Progress.new
  end

  # GET /contents/new
  def new
    @content = Content.new
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to contents_path, notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }

      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end



  # GET /contents/1/edit
  def edit
  end

  # GET /contents/1/deplicate
  def duplicate

    @new = @content.dup
    @new.title = "#copy #{@new.title}".clone

    respond_to do |format|
      if @new.save
        format.html { redirect_to contents_path, notice: 'Content was duplicate with successfully'}
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end

    end

  end

  # PATCH/PUT /contents/1
  # PATCH/PUT /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to contents_path, notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }


      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to contents_url, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_content
    @content = Content.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def content_params
    params.require(:content).permit(:title, :body, :doc, :publish_on, :days, :curse_id)
  end
end

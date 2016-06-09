class AnswerParagraphsController < ApplicationController
  before_action :set_answer_paragraph, only: [:show, :edit, :update, :destroy]

  # GET /answer_paragraphs
  # GET /answer_paragraphs.json
  def index
    @answer_paragraphs = AnswerParagraph.all
  end

  # GET /answer_paragraphs/1
  # GET /answer_paragraphs/1.json
  def show
  end

  # GET /answer_paragraphs/new
  def new
    @answer_paragraph = AnswerParagraph.new
  end

  # GET /answer_paragraphs/1/edit
  def edit
  end

  # POST /answer_paragraphs
  # POST /answer_paragraphs.json
  def create
    @answer_paragraph = AnswerParagraph.new(answer_paragraph_params)

    respond_to do |format|
      if @answer_paragraph.save
        format.html { redirect_to @answer_paragraph, notice: 'Answer paragraph was successfully created.' }
        format.json { render :show, status: :created, location: @answer_paragraph }
      else
        format.html { render :new }
        format.json { render json: @answer_paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_paragraphs/1
  # PATCH/PUT /answer_paragraphs/1.json
  def update
    respond_to do |format|
      if @answer_paragraph.update(answer_paragraph_params)
        format.html { redirect_to @answer_paragraph, notice: 'Answer paragraph was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_paragraph }
      else
        format.html { render :edit }
        format.json { render json: @answer_paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_paragraphs/1
  # DELETE /answer_paragraphs/1.json
  def destroy
    @answer_paragraph.destroy
    respond_to do |format|
      format.html { redirect_to answer_paragraphs_url, notice: 'Answer paragraph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_paragraph
      @answer_paragraph = AnswerParagraph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_paragraph_params
      params.require(:answer_paragraph).permit(:option_id, :evaluation_id, :sentence_id)
    end
end

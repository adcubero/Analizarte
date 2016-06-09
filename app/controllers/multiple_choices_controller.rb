class MultipleChoicesController < ApplicationController
  before_action :set_multiple_choice, only: [:show, :edit, :update, :destroy]

  # GET /multiple_choices
  # GET /multiple_choices.json
  def index
    @exam = Exam.find(params[:exam_id])
    @multiple_choices = @exam.multiple_choices
  end

  # GET /multiple_choices/1
  # GET /multiple_choices/1.json
  def show
    @exam = Exam.find(params[:exam_id])
  end

  # GET /multiple_choices/new
  def new
    @multiple_choice = MultipleChoice.new
    @multiple_choice.exam_id = Exam.find(params[:exam_id]).id
    @path = { url: exam_multiple_choices_path(@multiple_choice.exam_id), html: { method: :post } }
  end

  # GET /multiple_choices/1/edit
  def edit
  end

  # POST /multiple_choices
  # POST /multiple_choices.json
  def create
    @multiple_choice = MultipleChoice.new(multiple_choice_params)
    @multiple_choice.exam_id = Exam.find(params[:exam_id]).id

    respond_to do |format|
      if @multiple_choice.save
        format.html { redirect_to exam_multiple_choices_path(@multiple_choice.exam_id), notice: 'Multiple choice was successfully created.' }
        format.json { render :show, status: :created, location: @multiple_choice }
      else
        format.html { render :new }
        format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiple_choices/1
  # PATCH/PUT /multiple_choices/1.json
  def update
    respond_to do |format|
      if @multiple_choice.update(multiple_choice_params)
        format.html { redirect_to exam_paragrahs_path(@paragrah.exam_id), notice: 'Multiple choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @multiple_choice }
      else
        format.html { render :edit }
        format.json { render json: @multiple_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_choices/1
  # DELETE /multiple_choices/1.json
  def destroy
    @multiple_choice.destroy
    respond_to do |format|
      format.html { redirect_to multiple_choices_url, notice: 'Multiple choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_choice
      @multiple_choice = MultipleChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multiple_choice_params
      params.require(:multiple_choice).permit(:question, :exam_id)
    end
end

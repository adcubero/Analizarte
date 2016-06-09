class MultiOptionsController < ApplicationController
  before_action :set_multi_option, only: [:show, :edit, :update, :destroy]

  # GET /multi_options
  # GET /multi_options.json
  def index
    @multiple_choice = MultipleChoice.find(params[:multiple_choice_id])
    @multi_options = @multiple_choice.multi_options
  end

  # GET /multi_options/1
  # GET /multi_options/1.json
  def show
  end

  # GET /multi_options/new
  def new
    @multi_option = MultiOption.new
    @multi_option.multiple_choice_id = MultipleChoice.find(params[:multiple_choice_id]).id
    @path = { url: exam_multiple_choice_multi_options_path(MultipleChoice.find(params[:multiple_choice_id]).exam.id,@multi_option.multiple_choice_id), html: { method: :post } }
  end

  # GET /multi_options/1/edit
  def edit
  end

  # POST /multi_options
  # POST /multi_options.json
  def create
    @multi_option = MultiOption.new(multi_option_params)
    @multi_option.multiple_choice_id = MultipleChoice.find(params[:multiple_choice_id]).id


    respond_to do |format|
      if @multi_option.save
        format.html { redirect_to exam_multiple_choice_multi_options_path(MultipleChoice.find(params[:multiple_choice_id]).exam,@multi_option.multiple_choice_id), notice: 'Multi option was successfully created.' }
        format.json { render :show, status: :created, location: @multi_option }
      else
        format.html { render :new }
        format.json { render json: @multi_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multi_options/1
  # PATCH/PUT /multi_options/1.json
  def update
    respond_to do |format|
      if @multi_option.update(multi_option_params)
        format.html { redirect_to @multi_option, notice: 'Multi option was successfully updated.' }
        format.json { render :show, status: :ok, location: @multi_option }
      else
        format.html { render :edit }
        format.json { render json: @multi_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multi_options/1
  # DELETE /multi_options/1.json
  def destroy
    @multi_option.destroy
    respond_to do |format|
      format.html { redirect_to multi_options_url, notice: 'Multi option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multi_option
      @multi_option = MultiOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multi_option_params
      params.require(:multi_option).permit(:option, :multiple_choice_id)
    end
end

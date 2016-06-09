class OptionsController < ApplicationController
  before_action :set_option, only: [:show, :edit, :update, :destroy]

  # GET /options
  # GET /options.json
  def index
    @sentence = Sentence.find(params[:sentence_id])
    @options = @sentence.options
  end

  # GET /options/1
  # GET /options/1.json
  def show
    @sentence = Sentence.find(params[:sentence_id])
  end

  # GET /options/new
  def new
    @option = Option.new
    @option.sentence_id = Sentence.find(params[:sentence_id]).id
    @sentence = Sentence.find(@option.sentence_id)
    @path = { url: exam_paragrah_sentence_options_path(Paragrah.find(@sentence.paragrah_id).exam.id,@sentence.paragrah_id,@option.sentence_id), html: { method: :post } }
  end

  # GET /options/1/edit
  def edit
    @option = Option.find(params[:id])
    @path = { url: "#{sentence_options_path(@option.sentence)}/#{@option.id}", html: { method: :put } }
  end

  # POST /options
  # POST /options.json
  def create
    @option = Option.new(option_params)
    @option.sentence_id = Sentence.find(params[:sentence_id]).id
    @sentence = Sentence.find(@option.sentence_id)

    respond_to do |format|
      if @option.save
        format.html { redirect_to exam_paragrah_sentence_options_path(Paragrah.find(@sentence.paragrah_id).exam.id,@sentence.paragrah_id,@option.sentence_id), notice: 'option was successfully created.' }
        format.json { render :show, status: :created, location: @option }
      else
        format.html { render :new }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to sentence_options_path(@option.sentence), notice: 'option was successfully updated.' }
        format.json { render :show, status: :ok, location: @option }
      else
        format.html { render :edit }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to sentence_options_url, notice: 'option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:sentence_id, :option, :correct)
    end
end

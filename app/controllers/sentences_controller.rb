class SentencesController < ApplicationController
  before_action :set_sentence, only: [:show, :edit, :update, :destroy]

  # GET /sentences
  # GET /sentences.json
  def index
    @paragrah = Paragrah.find(params[:paragrah_id])
    @sentences = @paragrah.sentences
  end

  # GET /sentences/1
  # GET /sentences/1.json
  def show
    @paragrah = Paragrah.find(params[:paragrah_id])
  end

  # GET /sentences/new
  def new
    @sentence = Sentence.new
    @sentence.paragrah_id = Paragrah.find(params[:paragrah_id]).id
    @path = { url: exam_paragrah_sentences_path(Paragrah.find(params[:paragrah_id]).exam,@sentence.paragrah_id), html: { method: :post } }
  end

  # GET /sentences/1/edit
  def edit
    @sentence = Sentence.find(params[:id])
    @path = { url: "#{paragrah_sentences_path(@sentence.paragrah)}/#{@sentence.id}", html: { method: :put } }
  end

  # POST /sentences
  # POST /sentences.json
  def create
    @sentence = Sentence.new(sentence_params)
    @sentence.paragrah_id = Paragrah.find(params[:paragrah_id]).id

    respond_to do |format|
      if @sentence.save
        format.html { redirect_to exam_paragrah_sentences_path(Paragrah.find(params[:paragrah_id]).exam,@sentence.paragrah_id), notice: 'Audioguide inform was successfully created.' }
        format.json { render :show, status: :created, location: @sentence }
      else
        format.html { render :new }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentences/1
  # PATCH/PUT /sentences/1.json
  def update
    respond_to do |format|
      if @sentence.update(sentence_params)
        format.html { redirect_to paragrah_sentences_path(@sentence.paragrah), notice: 'Sentence was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentence }
      else
        format.html { render :edit }
        format.json { render json: @sentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentences/1
  # DELETE /sentences/1.json
  def destroy
    @sentence.destroy
    respond_to do |format|
      format.html { redirect_to paragrah_sentences_url, notice: 'Sentence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = Sentence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentence_params
      params.require(:sentence).permit(:paragrah_id, :sentence)
    end
end

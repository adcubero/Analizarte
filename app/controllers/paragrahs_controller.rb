class ParagrahsController < ApplicationController
  before_action :set_paragrah, only: [:show, :edit, :update, :destroy]

  # GET /paragrahs
  # GET /paragrahs.json
  def index
    @exam = Exam.find(params[:exam_id])
    @paragrahs = @exam.paragrahs
  end

  # GET /paragrahs/1
  # GET /paragrahs/1.json
  def show
    @exam = Exam.find(params[:exam_id])
  end

  # GET /paragrahs/new
  def new
    @paragrah = Paragrah.new
    @paragrah.exam_id = Exam.find(params[:exam_id]).id
    @path = { url: exam_paragrahs_path(@paragrah.exam_id), html: { method: :post } }
  end

  # GET /paragrahs/1/edit
  def edit
    @paragrah = Paragrah.find(params[:id])
    @path = { url: "#{exam_paragrahs_path(@paragrah.exam)}/#{@paragrah.id}", html: { method: :put } }
  end

  # POST /paragrahs
  # POST /paragrahs.json
  def create
    @paragrah = Paragrah.new(paragrah_params)
    @paragrah.exam_id = Exam.find(params[:exam_id]).id

    respond_to do |format|
      if @paragrah.save
        format.html { redirect_to exam_paragrahs_path(@paragrah.exam_id), notice: 'paragrah was successfully created.' }
        format.json { render :show, status: :created, location: @paragrah }
      else
        format.html { render :new }
        format.json { render json: @paragrah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paragrahs/1
  # PATCH/PUT /paragrahs/1.json
  def update
    respond_to do |format|
      if @paragrah.update(paragrah_params)
        format.html { redirect_to exam_paragrahs_path(@paragrah.exam), notice: 'paragrah was successfully updated.' }
        format.json { render :show, status: :ok, location: @paragrah }
      else
        format.html { render :edit }
        format.json { render json: @paragrah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragrahs/1
  # DELETE /paragrahs/1.json
  def destroy
    @paragrah.destroy
    respond_to do |format|
      format.html { redirect_to exam_paragrahs_url, notice: 'paragrah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paragrah
      @paragrah = Paragrah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paragrah_params
      params.require(:paragrah).permit(:exam_id)
    end
end

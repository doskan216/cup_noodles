class DetailPagesController < ApplicationController
  skip_before_filter :authorize
  before_action :set_detail_page, only: [:show, :edit, :update, :destroy]

  # GET /detail_pages
  # GET /detail_pages.json
  def index
    @detail_pages = DetailPage.all
  end

  # GET /detail_pages/1
  # GET /detail_pages/1.json
  def show
  end

  # GET /detail_pages/new
  def new
    @detail_page = DetailPage.new
  end

  # GET /detail_pages/1/edit
  def edit
  end

  # POST /detail_pages
  # POST /detail_pages.json
  def create
    @detail_page = DetailPage.new(detail_page_params)

    respond_to do |format|
      if @detail_page.save
        format.html { redirect_to @detail_page, notice: 'Detail page was successfully created.' }
        format.json { render :show, status: :created, location: @detail_page }
      else
        format.html { render :new }
        format.json { render json: @detail_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_pages/1
  # PATCH/PUT /detail_pages/1.json
  def update
    respond_to do |format|
      if @detail_page.update(detail_page_params)
        format.html { redirect_to @detail_page, notice: 'Detail page was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_page }
      else
        format.html { render :edit }
        format.json { render json: @detail_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_pages/1
  # DELETE /detail_pages/1.json
  def destroy
    @detail_page.destroy
    respond_to do |format|
      format.html { redirect_to detail_pages_url, notice: 'Detail page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_page
      @detail_page = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_page_params
      params[:detail_page]
    end
end

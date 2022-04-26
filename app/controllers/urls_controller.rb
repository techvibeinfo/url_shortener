class UrlsController < ApplicationController
  before_action :set_url, only: %i[ show edit update destroy ]

  # GET /urls or /urls.json
  def index
    @urls = Url.all
  end

  # GET /urls/1 or /urls/1.json
  def show
  end

  def show_url
    @link = Url.find_by_shorturl(params[:shorturl]) 
    render 'errors/404', status: 404 if @link.nil?
    redirect_to @link.longurl, allow_other_host: true
  end

  # GET /urls/new
  def new
     @url = Url.new
  end

  # GET /urls/1/edit
  def edit
  end

  # POST /urls or /urls.json
  def create
    # @url = Url.new(url_params)

    # respond_to do |format|
    #   if @url.save
    #     format.html { redirect_to url_url(@url), notice: "Url was successfully created." }
    #     format.json { render :show, status: :created, location: @url }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @url.errors, status: :unprocessable_entity }
    #   end
    # end
    render :json => ""
  end

  def addurl
    long_url = params['longurl']
    short_url = rand(36**8).to_s(36)
    @url = Url.new()
    @url.longurl =long_url
    @url.shorturl = short_url
    if @url.save
      render :json => {"shorturl":short_url}
    end
  end

  # PATCH/PUT /urls/1 or /urls/1.json
  def update
    respond_to do |format|
      if @url.update(url_params)
        format.html { redirect_to url_url(@url), notice: "Url was successfully updated." }
        format.json { render :show, status: :ok, location: @url }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urls/1 or /urls/1.json
  def destroy
    @url.destroy

    respond_to do |format|
      format.html { redirect_to urls_url, notice: "Url was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def url_params
      params.require(:url).permit(:longurl)
    end
end

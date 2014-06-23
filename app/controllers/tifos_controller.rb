class TifosController < ApplicationController
  before_action :set_tifo, only: [:show, :edit, :update, :destroy]

  # GET /tifos
  # GET /tifos.json
  def index
    @tifos = Tifo.all
  end

  # GET /tifos/1
  # GET /tifos/1.json
  def show
  end

  # GET /tifos/new
  def new
    @teams = Team.all
    @tifo = Tifo.new
  end

  # GET /tifos/1/edit
  def edit
    client = SoundCloud.new(access_token: current_user.access_token)

    @mytracks = client.get("/me/tracks")
  end

  # POST /tifos
  # POST /tifos.json
  def create
    @tifo = Tifo.new(tifo_params)

    respond_to do |format|
      if @tifo.save
        format.html { redirect_to tifo_path(@tifo.token), notice: 'Tifo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tifo }
      else
        format.html { render action: 'new' }
        format.json { render json: @tifo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tifos/1
  # PATCH/PUT /tifos/1.json
  def update
    respond_to do |format|
      if @tifo.update(tifo_params)
        format.html { redirect_to tifo_path(@tifo.token), notice: 'Tifo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tifo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tifos/1
  # DELETE /tifos/1.json
  def destroy
    @tifo.destroy
    respond_to do |format|
      format.html { redirect_to tifos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tifo
      @tifo = Tifo.find_by_token(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tifo_params
      params.require(:tifo).permit(:team_id, :track_id, :user_id)
    end
end

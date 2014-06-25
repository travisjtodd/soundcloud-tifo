class PhotosController < ApplicationController
  before_action :set_tifo

  def index
  end

  def show
  end

  def create
    @photo = @tifo.photos.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to tifo_photos_path(@tifo.token), notice: 'photo was successfully created.' }
        format.json { render action: 'show', status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tifo
      @tifo = Tifo.find_by_token(params[:tifo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:tifo_id, :url, :photo_id)
    end
end

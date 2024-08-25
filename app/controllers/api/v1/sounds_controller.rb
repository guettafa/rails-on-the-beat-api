class Api::V1::SoundsController < ApplicationController
  before_action :set_sound, only: %i[ show update destroy ]

  # GET /sounds
  def index
    @sounds = Sound.are_visible

    render json: @sounds
  end

  # GET /sounds/1
  def show
    render json: @sound
  end

  # POST /sounds
  def create
    @sound = Sound.new(sound_params)

    if @sound.save
      render json: @sound, status: :created, location: @sound
    else
      render json: @sound.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sounds/1
  def update
    if @sound.update(sound_params)
      render json: @sound
    else
      render json: @sound.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sounds/1
  def destroy
    @sound.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sound
      @sound = Sound.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sound_params
      params.require(:sound).permit(:title, :description, :artist_id, :audio, :artwork, :type, :visibility)
    end
end

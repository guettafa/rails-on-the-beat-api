class Api::V1::CommentsController < ApplicationController
  before_action  :get_sound
  before_action :set_comment, only: %i[ show update destroy ]

  # GET /sounds/1/comments/
  def index
    @comments = @sound.comments.all

    render json: @comments
  end

  # GET /sounds/1/comments/5
  def show
    render json: @comment
  end

  # POST /sounds/1/comments/
  def create
    @comment = @sound.comments.build(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sounds/1/comments/5
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @sound.comments.find(params[:id])
    end

    def get_sound 
      @sound = Sound.find(params[:sound_id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content, :artist_id, :sound_id)
    end
end

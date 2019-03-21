class Api::VideosController < ApplicationController
  def index
    @videos =  Video.all
    render json: @videos
  end
  def show
    @video = Video.find(params[:id])
    render json: @video
  end
  def create
    video = Video.new()
  end
end

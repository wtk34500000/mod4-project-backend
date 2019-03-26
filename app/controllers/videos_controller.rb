class VideosController < ApplicationController
    def index
        @videos=Video.all
        render json: @videos
    end

    def create
        @video=Video.find_or_create_by(video_params)
        render json: @video
    end

    private
    def video_params
        params.require(:video).permit(:url, :description, :title, :img_url)
    end
end

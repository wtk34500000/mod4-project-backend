class VideosController < ApplicationController
    def create
       
        @video=Video.create(video_params)
        render json: @video 
    end

    private
    def video_params
        params.require(:video).permit(:url, :description, :title)
    end
end

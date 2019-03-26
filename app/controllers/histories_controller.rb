class HistoriesController < ApplicationController
    def index
        @hises=History.all
        render json: @hises
    end


    def create
        @his=History.find_or_create_by(his_params)
        render json: @his

    end

    private

    def his_params
        params.require(:history).permit(:user_id, :video_id)
    end
end

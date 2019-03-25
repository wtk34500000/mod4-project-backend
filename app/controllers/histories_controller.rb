class HistoriesController < ApplicationController
    def create
        @his=History.create(his_params)
        render json: @his
      
    end

    private

    def his_params
        params.require(:history).permit(:user_id, :video_id)
    end
end

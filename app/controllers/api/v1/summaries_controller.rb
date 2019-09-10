class Api::V1::SummariesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    
    def index
        @summaries = Summary.all
        render json: @summaries
    end

    def show
        @summary = Summary.find(params[:id])
        render json: @summary
    end

    def create
        @summary = Summary.create(summary_params)
        render json: @summary
    end

    def update
        @summary = Summary.find(params[:id])
        @summary.update(summary_params)
        render json: @summary
    end

    private

    def summary_params
        params.require(:summary).permit(:content, :user_id)
    end
end

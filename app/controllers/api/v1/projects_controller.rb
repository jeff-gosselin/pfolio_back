class Api::V1::ProjectsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @projects = Project.all 
        render json: @projects
    end

    def show
        @project = Project.find(:params[:id])
        render json: @project
    end

    def create
        @project = Project.create(project_params)

    end

    private

    def project_params
        params.require(:project).permit(:title, :description, :url, :technologies, :date)
    end
end

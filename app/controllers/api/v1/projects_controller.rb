class Api::V1::ProjectsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @projects = Project.all
        render json: @projects
    end

    def show
        @project = Project.find(params[:id])
				@project_img = @project.image.service_url
        render json: { data: @project, image_url: @project_img }
    end

    def create
        @project = Project.create(project_params)
        render json: @project
    end

    def update
        @project = Project.find(project_params[:id])
        @project.update(project_params)
        render json: @project
    end

    private

    def project_params
        params.require(:project).permit(:title, :description, :url, :technologies, :date, :image, :user_id)
    end
end

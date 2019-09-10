class Api::V1::SkillsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    
    def index
        @skills = Skill.all
        render json: @skills
    end

    def show
        @skill = Skill.find(params[:id])
        render json: @skill
    end

    def create
        @skill = Skill.create(skill_params)
        render json: @skill
    end

    def update
        @skill = Skill.find(params[:id])
        @skill.update(skill_params)
        render json: @skill
    end

    def destroy
        @skill = Skill.find(params[:id])
        @skill.destroy
    end

    private

    def skill_params
        params.require(:skill).permit(:name, :level, :user_id)
    end
end

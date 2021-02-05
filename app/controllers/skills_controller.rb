class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to skills_path
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  private
  def skill_params
    params.require(:skill).permit(:name, :description, :category)
  end
end

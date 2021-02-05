class UserSkillsController < ApplicationController
  def new
    @skills = Skill.all
    @user_skill = UserSkill.new
  end

  def create

  end

end

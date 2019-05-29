class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def

  def create
    @exercice = Exercice.find(params[:id])
    @achievement = Achievement.new(params[@exercice])
    @achievement.user = current_user
    if @achievement.save
      redirect_to achievements_path
    else
      redirect_to moods_path
    end
  end
end

class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def create
    raise
    @achievement.user = current_user
    @exercice = Exercice.find(params[:exercice_id])
    @achievement = Achievement.new(params[:user_id, :mood_id])
    @achievement.save
    redirect_to achievements_path
  end
end

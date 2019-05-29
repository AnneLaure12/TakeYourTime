class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def

  def create
    @exercise = exercise.find(params[:id])
    @achievement = Achievement.new(params[@exercise])
    @achievement.user = current_user
    if @achievement.save
      redirect_to achievements_path
    else
      redirect_to moods_path
    end
  end
end

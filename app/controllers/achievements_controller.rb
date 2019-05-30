class AchievementsController < ApplicationController

  def new
    @moods = Mood.all
    @exercice = Exercice.find(params[:exercice_id])
    @achievement = Achievement.new
  end

  def index
    @achievements = Achievement.all
  end

  def create
    @achievement = Achievement.new
    @achievement.user = current_user
    @exercice = Exercice.find(params[:exercice_id])
    @achievement.exercice = @exercice
    @achievement.mood_id = @exercice.mood
    if @achievement.save!
      redirect_to achievements_path
    else
      redirect_to exercice_path(@exercice)
    end
  end
end

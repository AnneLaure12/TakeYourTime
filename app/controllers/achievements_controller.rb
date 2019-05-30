class AchievementsController < ApplicationController

  def new
    @exercice = Exercice.find(params[:exercice_id])
    @achievement = Achievement.new
  end

  def index
    @achievements = Achievement.all
  end

  def create
    @achievement = Achievement.new(set_params)
    @achievement.user = current_user
    @exercice = Exercice.find(params[:exercice_id])
    @achievement.exercice = @exercice
    @achievement.mood = @exercice.mood
    @achievement.date = Time.now
    if @achievement.save!
      redirect_to achievements_path
    else
      redirect_to exercice_path(@exercice)
    end
  end

  private

  def set_params
    params.require(:achievement).permit(:rating)
  end
end

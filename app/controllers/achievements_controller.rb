class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def

  def create
    @exercice = Exercice.find(params[:exercice_id])

  end
end

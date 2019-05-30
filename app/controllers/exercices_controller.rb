class ExercicesController < ApplicationController
  def index
    @exercices = Exercice.all
  end

  def show
    @exercices = Exercice.all
    @exercice = Exercice.find(params[:id])
    @achievement = Achievement.new
    @mood = @exercice.mood
  end
end

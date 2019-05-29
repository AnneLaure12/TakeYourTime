class ExercicesController < ApplicationController
  def index
    @exercices = Exercice.all
  end

  def show
    @exercice = Exercice.find(params[:id])
    @mood = @exercice.mood
  end
end

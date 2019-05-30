class ExercicesController < ApplicationController
  def index
    search = params["search"]
    if search.present?
      name = search["name"]
      @exercices = Exercice.ransack(name_or_description_cont: name).result
    else
      @exercices = Exercice.all
    end
  end

  def show
    @exercices = Exercice.all
    @exercice = Exercice.find(params[:mood_id])
    @achievement = Achievement.new
    @mood = @exercice.mood
  end
end

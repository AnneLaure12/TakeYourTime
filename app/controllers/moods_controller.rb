class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    @exercices = Exercice.all
  end

  def find
    @mood = Mood.find(params[:id])
  end
end

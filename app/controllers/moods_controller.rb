class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    @exercices = Exercice.all
  end
end

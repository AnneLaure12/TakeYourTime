class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    @exercises = exercise.all
  end
end

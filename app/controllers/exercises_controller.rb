class ExercisesController < ApplicationController
  def index
    @exercises = exercise.all
  end

  def show
    @exercise = exercise.find(params[:id])
  end
end

class TeachersController < ApplicationController
  def index
    @teacher = Teacher.find(params[:class_id])
    @teachers = Teacher.all
  end
end

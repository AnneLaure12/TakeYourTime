class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    @teacher = Teacher.find(params[:teacher_id])
  end
end

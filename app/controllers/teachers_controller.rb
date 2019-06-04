class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all

    @teachers = Teacher.where.not(latitude: nil, longitude: nil)

    @markers = @teachers.map do |teacher|
      {
        lat: teacher.latitude,
        lng: teacher.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { teacher: teacher })
      }
    end
  end
end

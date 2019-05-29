module ApplicationHelper
  def select_exos(exercises, mood)
    exercises.select { |exercise| exercise.mood == mood }.sample
  end

  def select_another_exos(exercises, rejected_exo, mood)
    exercises_two = exercises.reject { |exo| exo == rejected_exo }
    exercises_two.select { |exercise| exercise.mood == mood }.sample
  end
end

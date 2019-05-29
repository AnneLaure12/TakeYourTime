module ApplicationHelper
  def select_exos(exercices, mood)
    exercices.select { |exercice| exercice.mood == mood }.sample
  end

  def select_another_exos(exercices, rejected_exo, mood)
    2.times do
      exercices_two = exercices.reject { |exo| exo == rejected_exo }
      exercices_two.select { |exercice| exercice.mood == mood }.sample
    end
  end
end

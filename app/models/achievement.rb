class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :exercice
  belongs_to :init_mood, class_name: "Mood"
  belongs_to :final_mood, class_name: "Mood"

  validates :date, presence: true
end

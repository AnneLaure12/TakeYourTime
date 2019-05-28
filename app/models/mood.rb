class Mood < ApplicationRecord
  has_many :exercices
  has_many :init_achievement, class_name: "Achievement", foreign_key: "init_mood_id"
  has_many :final_achievement, class_name: "Achievement", foreign_key: "final_mood_id"
  validates :name, presence: true, uniqueness: true
end

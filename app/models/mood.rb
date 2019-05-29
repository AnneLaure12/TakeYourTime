class Mood < ApplicationRecord
  has_many :exercices
  has_many :achievements
  # validates :name, presence: true, uniqueness: true
end

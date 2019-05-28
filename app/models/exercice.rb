class Exercice < ApplicationRecord
  belongs_to :mood
  validates :name, presence: true
end

class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :exercice
  belongs_to :mood

  validates :date, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true

end

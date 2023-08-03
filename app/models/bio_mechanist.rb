class BioMechanist < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :comments
  has_many :professional_athletes
  has_many :mental_health_professionals
  has_many :nutritionists
  has_many :bio_mechanists
  # has_many :physical_therapists
  # has_many :personal_trainers
  # has_many :coaches
  # has_many :sports
  # has_many :teams
  # has_many :sports_teams
  # has_many :sports, through: :sports_teams
  # has_many :teams, through: :sports_teams
end

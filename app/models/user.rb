class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
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

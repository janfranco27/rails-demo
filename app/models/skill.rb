class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :category
end

class User < ApplicationRecord
  #EMAIL_REGULAR_EXPRESSION =  /(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})/i

  validates_presence_of :name
  validates_presence_of :email

  #validates :email, format: { with: EMAIL_REGULAR_EXPRESSION }

  has_many :user_skills
  has_many :skills, through: :user_skills
end

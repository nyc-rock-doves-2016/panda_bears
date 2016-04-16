class User < ActiveRecord::Base
  has_secure_password
  has_many :decks, foreign_key: :creator_id
  validates :username, :email, presence: true, uniqueness: true
  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds
end

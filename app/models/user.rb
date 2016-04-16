class User < ActiveRecord::Base
  has_secure_password
  has_many :created_decks, class_name: "Deck", foreign_key: :creator_id
  has_many :rounds, foreign_key: :player_id
  has_many :played_decks, through: :rounds, source: :deck
  has_many :guesses, through: :rounds
  validates :username, :email, presence: true, uniqueness: true
end

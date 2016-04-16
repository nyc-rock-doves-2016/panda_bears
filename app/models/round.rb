class Round < ActiveRecord::Base
  validates :player_id, :deck_id, presence: true

  has_many :guesses, class_name: "Guess"
  belongs_to :player, class_name: "User"
  belongs_to :deck
  has_many :cards, through: :deck
end

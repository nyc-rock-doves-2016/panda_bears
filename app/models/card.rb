class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :decks
  validates :question, :answer, :deck_id,  presence: true

  def correct?(guess)
    guess ==self.answer
  end
end

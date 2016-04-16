class Round < ActiveRecord::Base
  validates :player_id, :deck_id, presence: true

  has_many :guesses, class_name: "Guess"
  belongs_to :player, class_name: "User"
  belongs_to :deck
  has_many :cards, through: :deck

  def draw
    correctly_answered = self.correct_guesses.collect {|guess| guess.card}
    (self.cards - correctly_answered).sample
  end

  def correct_on_first_try
    incorrect_guesses = self.guesses - self.correct_guesses
    self.correct_guesses.select {|correct| !incorrect_guesses.find {|incorrect| correct.card == incorrect.card}}
  end

  def complete?
    self.cards.count == self.correct_guesses.count
  end

  def correct_guesses
    self.guesses.select {|guess| guess.is_correct}
  end
end

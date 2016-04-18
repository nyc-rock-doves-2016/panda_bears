class User < ActiveRecord::Base
  has_secure_password
  has_many :created_decks, class_name: "Deck", foreign_key: :creator_id
  has_many :rounds, foreign_key: :player_id
  has_many :played_decks, through: :rounds, source: :deck
  has_many :guesses, through: :rounds
  validates :username, :email, presence: true, uniqueness: true

  def rounds_played
    self.rounds.select{|round| round.complete?}
  end

  def total_rounds_played
    self.rounds_played.length
  end

  def total_correct_on_first_try 
    self.rounds_played.reduce(0){|sum, round| sum + round.correct_on_first_try.count}
  end

  def total_guesses
    self.rounds_played.reduce(0){|sum, round| sum + round.guesses.length}
  end

  def percent_correct_on_first_try
    if self.total_guesses != 0
      "#{((self.total_correct_on_first_try / self.total_guesses.to_f) * 100).round}%"
    else
      "N/A"
    end
  end
end

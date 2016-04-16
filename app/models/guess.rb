class Guess < ActiveRecord::Base
  validates :card_id, :round_id, presence: true

  belongs_to :card
  belongs_to :round

  belongs_to :player, class_name: "Round"

  def guess_result
    self.is_correct ? "correct" : "incorrect"
  end
end

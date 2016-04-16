class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :cards
  has_many :rounds
  has_many :guesses, through: :rounds
  validates :name, :description, :creator_id, presence: true


  def snippet
    "#{self.description[0..25]}..."
  end
end

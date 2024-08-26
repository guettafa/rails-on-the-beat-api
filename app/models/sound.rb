class Sound < ApplicationRecord
  scope :are_visible, -> { where(is_visible: true) }
  scope :by_genre, ->(genre) { where(genre: genre) }
  scope :recent_to_older, -> { order(created_at: :desc) }

  enum genre: {
    electronic: 0,
    pop: 1,
    digicore: 2,
    jazz: 3
  }

  belongs_to :artist

  has_one_attached :audio
  has_one_attached :artwork
end

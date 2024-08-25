class Sound < ApplicationRecord
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

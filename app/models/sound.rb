class Sound < ApplicationRecord
  belongs_to :artist
  has_one_attached :audio
end

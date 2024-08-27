class Comment < ApplicationRecord
  validates_presence_of :content

  belongs_to :sound
  belongs_to :artist

  scope :recent_to_older, -> { order(:created_at).reverse_order }
end

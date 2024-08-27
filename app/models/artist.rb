class Artist < ApplicationRecord
  has_many :sounds, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_one_attached :avatar

  validates :name, :email, presence: true, uniqueness: true
end

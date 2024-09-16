class Artist < ApplicationRecord
  with_options dependent: :destroy do
    has_many :sounds
    has_many :comments
  end

  has_one_attached :avatar

  validates :name, :email, presence: true, uniqueness: true
end

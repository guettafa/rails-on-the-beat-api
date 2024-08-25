class SoundSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :artwork_link, :is_visible
  belongs_to :artist

  def artwork_link
    Rails.application.routes.url_helpers.url_for(object.artwork)
  end
end

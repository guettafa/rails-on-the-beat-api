class SoundSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :artwork_link, :is_visible, :audio_link
  belongs_to :artist

  def artwork_link
    Rails.application.routes.url_helpers.url_for(object.artwork)
  end

  def audio_link
    Rails.application.routes.url_helpers.url_for(object.audio)
  end
end

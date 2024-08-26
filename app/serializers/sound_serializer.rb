class SoundSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :artwork_link, :is_visible, :audio_link, :created_at
  belongs_to :artist

  def artwork_link
    generate_url(object.artwork)
  end

  def audio_link
    generate_url(object.audio)
  end

  private

    def generate_url(blob)
      Rails.application.routes.url_helpers.url_for(blob)
    end
end

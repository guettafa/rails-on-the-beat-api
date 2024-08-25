class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar_link

  def avatar_link
    Rails.application.routes.url_helpers.url_for(object.avatar)
  end
end

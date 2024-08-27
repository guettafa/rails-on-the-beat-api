class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :sound_id
  belongs_to :artist
end

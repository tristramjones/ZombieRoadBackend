class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :user
end

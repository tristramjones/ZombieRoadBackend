class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :user_id, :user_name
  # belongs_to :user

  def user_name
    object.user.name
  end
end

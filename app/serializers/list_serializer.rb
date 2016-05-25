class ListSerializer < ActiveModel::Serializer
  attributes :title, :description, :emoji, :id, :user_id  

  # def user
  #   object.user
  # end
  #
  # def title
  #   object.title
  # end
  #
  # def description
  #   object.description
  # end
  #
  # def emoji
  #   object.emoji
  # end

end

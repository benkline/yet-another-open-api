class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :description, :emoji, :public, :viewable  

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

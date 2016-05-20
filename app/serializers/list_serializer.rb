class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :emoji

  def title
    object.title
  end

  def description
    object.description
  end

  def emoji
    object.emoji
  end

end

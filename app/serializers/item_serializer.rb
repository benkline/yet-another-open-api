class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :title, :description, :complete, :public, :viewable

  # def task
  #   object.task
  # end
  #
  # def description
  #   object.description
  # end

end

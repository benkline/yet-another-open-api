class ItemSerializer < ActiveModel::Serializer
  attributes :title, :description, :id, :list_id

  # def task
  #   object.task
  # end
  #
  # def description
  #   object.description
  # end

end

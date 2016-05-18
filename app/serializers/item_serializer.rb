class ItemSerializer < ActiveModel::Serializer
  attributes :id, :task, :description
end

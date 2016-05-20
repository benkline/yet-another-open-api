class ItemSerializer < ActiveModel::Serializer
  attributes :id, :task, :description

  def task
    object.task
  end

  def description
    object.description
  end

end

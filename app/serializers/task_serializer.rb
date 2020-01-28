class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :Tfrom, :Tto, :completed
  has_one :user
end

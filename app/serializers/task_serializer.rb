class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :Tfrom, :Tto, :completed, :created_at
  has_one :user
end

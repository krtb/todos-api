class TodoSerializer < ActiveModel::Serializer
  # attributes to be serialized  
  # whitelist defined, onlt these items
  attributes :id, :title, :created_by, :created_at, :updated_at
  # model association
  # this way, payload will include an array of items
  has_many :items
end

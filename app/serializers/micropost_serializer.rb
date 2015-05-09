class MicropostSerializer < ActiveModel::Serializer
  attributes :id, :author, :email, :review, :created_at, :updated_at
end

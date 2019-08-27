class UserSerializer < ActiveModel::Serializer
  has_many :projects, dependent: :destroy
  attributes :id, :username
end

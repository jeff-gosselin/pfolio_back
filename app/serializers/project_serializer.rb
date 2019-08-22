class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :technologies, :date, :image, :user_id
end

class ProjectSerializer < ActiveModel::Serializer
	belongs_to :user
  attributes :id, :title, :description, :url, :technologies, :date
end

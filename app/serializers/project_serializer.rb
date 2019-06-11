class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :technologies, :date 
end

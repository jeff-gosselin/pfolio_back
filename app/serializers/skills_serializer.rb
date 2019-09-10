class SkillsSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :user_id
end

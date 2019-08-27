class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :technologies, :date, :user_id, :img

	def img
    {
			owner_id: self.object.user.id,
     img_url: self.object.image.service_url
	 }
  end
end

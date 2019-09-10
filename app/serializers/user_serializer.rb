class UserSerializer < ActiveModel::Serializer
  has_many :projects, dependent: :destroy
  include Rails.application.routes.url_helpers
    
    attributes :id, :username, :pic_url
    has_many :skills
    has_one :summary
    # def pic_url
    #     rails_blob_path(object.pic, only_path: true) if object.pic.attached?
    # end

    def pic_url
      {
        picture: self.object.pic.service_url
     }
    end

end


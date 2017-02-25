class Book < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    mount_uploader :image, ImageUploader
    validates_presence_of :title, :message => "제목을 입력해주세요" 
end

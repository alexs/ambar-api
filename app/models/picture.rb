class Picture
  include Mongoid::Document
  include Mongoid::Timestamps

  mount_uploader :preview, PictureUploader
  mount_uploader :file, FilesUploader

  field :name, type: String
  field :preview, type: String
  field :file, type: String
  field :license_id, type: Integer
  field :user_id, type: Integer
end

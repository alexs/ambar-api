class Picture
  include Mongoid::Document
  field :name, type: String
  field :preview, type: String
  field :file, type: String
  field :license_id, type: Integer
  field :user_id, type: Integer
end

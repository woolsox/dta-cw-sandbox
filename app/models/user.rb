class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  delegate :url, to: :image, allow_nil: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end

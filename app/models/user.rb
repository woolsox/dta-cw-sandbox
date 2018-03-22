class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  delegate :url, to: :avatar, allow_nil: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end

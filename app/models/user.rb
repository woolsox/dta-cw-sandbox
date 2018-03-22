class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_one :avatar,
          class_name: Image, as: :imageable,
          dependent: :destroy, inverse_of: :imageable
end

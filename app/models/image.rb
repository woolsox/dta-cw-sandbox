class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  mount_uploader :file, AvatarUploader

  delegate :url, to: :file

  def filename
    file&.filename || file&.file&.filename
  end
end

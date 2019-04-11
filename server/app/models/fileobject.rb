class Fileobject < ApplicationRecord
  mount_uploader :file, FileUploader
  validates :file, presence: true
end

class Fileobject < ApplicationRecord
  mount_uploader :file, FileUploader
end

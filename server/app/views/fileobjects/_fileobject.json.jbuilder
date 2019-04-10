json.extract! fileobject, :id, :uuid, :consolidation, :material, :created_date, :modified_date, :file_name, :file_type, :alias_name, :status, :make_public, :is_locked, :source, :file_operation, :operating_application, :caption, :description, :flickr_photoid, :attachment, :created_at, :updated_at
json.url fileobject_url(fileobject, format: :json)

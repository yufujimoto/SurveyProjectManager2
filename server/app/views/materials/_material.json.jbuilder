json.extract! material, :id, :uuid, :consolidation, :name, :material_number, :estimated_period_beginning, :estimated_period_peak, :estimated_period_ending, :latitude, :longitude, :altitude, :description, :created_at, :updated_at
json.url material_url(material, format: :json)

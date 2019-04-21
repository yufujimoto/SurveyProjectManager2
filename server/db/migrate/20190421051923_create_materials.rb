class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :uuid
      t.string :consolidation
      t.string :name
      t.string :material_number
      t.string :estimated_period_beginning
      t.string :estimated_period_peak
      t.string :estimated_period_ending
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.string :description

      t.timestamps
    end
  end
end

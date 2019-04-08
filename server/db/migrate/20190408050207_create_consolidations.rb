class CreateConsolidations < ActiveRecord::Migration[5.2]
  def change
    create_table :consolidations do |t|
      t.string :uuid
      t.string :name
      t.string :geographic_annotation
      t.string :temporal_annotation
      t.text :description
      t.string :flickr_photosetid
      t.string :project

      t.timestamps
    end
  end
end

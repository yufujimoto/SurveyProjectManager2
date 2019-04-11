class CreateFileobjects < ActiveRecord::Migration[5.2]
  def change
    create_table :fileobjects do |t|
      t.string :uuid
      t.string :consolidation
      t.string :material
      t.datetime :created_date
      t.datetime :modified_date
      t.string :file
      t.string :file_type
      t.string :alias_name
      t.string :status
      t.boolean :make_public
      t.boolean :is_locked
      t.string :source
      t.string :file_operation
      t.string :operating_application
      t.string :caption
      t.text :description
      t.string :flickr_photoid
      t.timestamps
    end
  end
end

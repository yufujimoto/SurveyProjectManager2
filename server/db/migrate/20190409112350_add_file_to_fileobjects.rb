class AddFileToFileobjects < ActiveRecord::Migration[5.2]
  def change
    add_column :fileobjects, :file, :string
  end
end

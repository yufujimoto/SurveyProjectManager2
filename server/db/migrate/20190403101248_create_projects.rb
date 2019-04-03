class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :uuid
      t.string :name
      t.string :title
      t.date :begining
      t.date :ending
      t.integer :phase
      t.text :introduction
      t.text :cause
      t.string :created_by
      t.string :cover

      t.timestamps
    end
  end
end

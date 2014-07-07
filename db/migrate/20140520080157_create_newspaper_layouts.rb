class CreateNewspaperLayouts < ActiveRecord::Migration
  def change
    create_table :newspaper_layouts do |t|
      t.string :code

      t.timestamps
    end
  end
end

class ChangeFieldsInPaintings < ActiveRecord::Migration[7.0]
  def change
    rename_column :paintings, :title, :en_title
    rename_column :paintings, :description, :en_description
    
    add_column :paintings, :es_title, :string
    add_column :paintings, :es_description, :text
  end
end

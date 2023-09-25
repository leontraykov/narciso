class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.text :description
      t.string :image
      t.date :creation_date

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name_en
      t.string :name_es
      t.text :info_en
      t.text :info_es
      t.boolean :admin, default: false # добавьте эту строку

      t.timestamps
    end
  end
end

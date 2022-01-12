class CreateAdverts < ActiveRecord::Migration[6.1]
  def change
    create_table :adverts do |t|
      t.string :title
      t.integer :category
      t.text :description
      t.string :image
      t.string :image2
      t.string :image3
      t.string :image4
      t.integer :prix
      t.string :localisation
      t.boolean :valide, default: false
      t.references :user, foreign_key: true
    

      t.timestamps
    end
  end
end

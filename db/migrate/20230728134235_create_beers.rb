class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :country
      t.string :style
      t.text :description
      t.integer :abv

      t.timestamps
    end
  end
end

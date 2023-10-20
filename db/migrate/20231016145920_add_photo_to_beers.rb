class AddPhotoToBeers < ActiveRecord::Migration[7.0]
  def change
    add_column :beers, :photo, :string
  end
end

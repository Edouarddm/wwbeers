class ChangeAbvToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :beers, :abv, :float
  end
end

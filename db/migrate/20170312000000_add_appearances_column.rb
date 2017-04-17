class AddAppearancesColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :appearances, :rating, :integer
  end
end

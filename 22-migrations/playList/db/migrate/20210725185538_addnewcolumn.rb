class Addnewcolumn < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :rating, :integer
  end
end

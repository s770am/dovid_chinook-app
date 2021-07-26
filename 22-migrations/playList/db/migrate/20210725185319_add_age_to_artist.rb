class AddAgeToArtist < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :age, :integer
  end
end

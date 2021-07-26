class RenameAlbumRatingToRanking < ActiveRecord::Migration[6.1]
  def change
    rename_column :albums, :rating, :ranking
  end
end

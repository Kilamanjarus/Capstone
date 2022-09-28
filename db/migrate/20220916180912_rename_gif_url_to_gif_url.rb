class RenameGifUrlToGifUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :exercises, :gif_url, :gifUrl
  end
end

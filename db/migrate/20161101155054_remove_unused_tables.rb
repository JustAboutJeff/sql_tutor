class RemoveUnusedTables < ActiveRecord::Migration
  def change
    drop_table :playlist_tracks
    drop_table :playlists
    drop_table :invoice_lines

    remove_column :tracks, :genre_id
    drop_table :genres
  end
end

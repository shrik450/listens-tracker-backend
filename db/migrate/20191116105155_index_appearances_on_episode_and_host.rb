# typed: true
class IndexAppearancesOnEpisodeAndHost < ActiveRecord::Migration[6.0]
  def change
    add_index :appearances, %i[host_id episode_id], unique: true
  end
end

# typed: true
class AddUrlToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :url, :string
  end
end

class AddDurationToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :duration, :integer
  end
end

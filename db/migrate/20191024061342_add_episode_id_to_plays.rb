# frozen_string_literal: true

class AddEpisodeIdToPlays < ActiveRecord::Migration[5.1]
  def change
    add_column :plays, :episode_id, :integer
  end
end

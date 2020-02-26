# typed: true
# frozen_string_literal: true

class AddEpisodeIdAndHostIdToAppearances < ActiveRecord::Migration[5.1]
  def change
    add_column :appearances, :episode_id, :integer
    add_column :appearances, :host_id, :integer
  end
end

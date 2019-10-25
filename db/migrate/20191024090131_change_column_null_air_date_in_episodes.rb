# frozen_string_literal: true

class ChangeColumnNullAirDateInEpisodes < ActiveRecord::Migration[5.1]
  def change
    change_column_null :episodes, :air_date, false
  end
end

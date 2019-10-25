class AddAirDateToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :air_date, :datetime
  end
end

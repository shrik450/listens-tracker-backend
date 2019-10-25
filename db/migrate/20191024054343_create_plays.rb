class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.datetime :played_at, null: false
      t.integer :play_time, null: false
      t.timestamps
    end
  end
end

class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :show_notes
      t.string :comments
      t.timestamps
    end
  end
end

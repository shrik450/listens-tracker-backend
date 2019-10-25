# frozen_string_literal: true

class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :speaking_time
      t.timestamps
    end
  end
end

class MakeAllRelationsMandatory < ActiveRecord::Migration[5.1]
  def change
    change_column_null :episodes, :feed_id, false
    change_column_null :plays, :episode_id, false
  end
end

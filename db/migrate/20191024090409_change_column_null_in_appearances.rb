class ChangeColumnNullInAppearances < ActiveRecord::Migration[5.1]
  def change
    change_column_null :appearances, :episode_id, false
    change_column_null :appearances, :host_id, false
  end
end

# typed: true
# frozen_string_literal: true

class RenameCreateHostsToNameInHosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :hosts, :CreateHosts, :name
  end
end

  class RenameOldTableToNewTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :classes, :teachers
  end
end

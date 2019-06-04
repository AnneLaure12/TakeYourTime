class RemoveStartAtToTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :start_at, :date
  end
end

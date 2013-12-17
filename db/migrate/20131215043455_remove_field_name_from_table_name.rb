class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :users, :topic_id
  end
end

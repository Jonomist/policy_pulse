class RemoveUserIdFromLegislations < ActiveRecord::Migration[5.2]
  def change
    remove_column :legislations, :user_id
  end
end

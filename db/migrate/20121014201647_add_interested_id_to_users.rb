class AddInterestedIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interested_id, :integer

  end
end

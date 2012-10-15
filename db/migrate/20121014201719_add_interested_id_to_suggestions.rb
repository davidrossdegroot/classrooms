class AddInterestedIdToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :interested_id, :integer

  end
end

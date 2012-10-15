class CreateInteresteds < ActiveRecord::Migration
  def change
    create_table :interesteds do |t|
      t.decimal :price
      t.integer :user_id
      t.integer :suggestion_id

      t.timestamps
    end
  end
end

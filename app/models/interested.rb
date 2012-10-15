class Interested < ActiveRecord::Base
  belongs_to :user
  belongs_to :suggestion
  attr_accessible :user_id, :suggestion_id, :price
end

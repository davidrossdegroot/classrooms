class Suggestion < ActiveRecord::Base
  has_many :users
  attr_accessible :suggestion_id, :name, :instructor, :description
  
  #protected
  #def add_user_to_class
  #  current_user.suggestions.build(params[:suggestions])
  #end
end

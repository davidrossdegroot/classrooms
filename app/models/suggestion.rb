class Suggestion < ActiveRecord::Base
  has_many :interesteds
  has_many :users, :through => :interesteds
  attr_accessible :suggestion_id, :name, :instructor, :description
  
  #protected
  #def add_user_to_class
  #  current_user.suggestions.build(params[:suggestions])
  #end
end

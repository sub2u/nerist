class Newse < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :branch, :description]

  validates :title, :presence => true, :uniqueness => true
  
end

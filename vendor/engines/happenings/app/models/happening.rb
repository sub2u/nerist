class Happening < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :url, :branch, :description]

  validates :title, :presence => true, :uniqueness => true
  
end

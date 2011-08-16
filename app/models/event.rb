class Event < ActiveRecord::Base
  validates :title, :presence=>true
  validates :userid, :presence=>true
  validates :description, :presence=>true
  validates :at, :presence=>true
  validates_uniqueness_of :title
end

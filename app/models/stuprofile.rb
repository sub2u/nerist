class Stuprofile < ActiveRecord::Base
   validates :userid, :presence=>true
  validates :branch, :presence=>true
  validates_uniqueness_of :userid
end

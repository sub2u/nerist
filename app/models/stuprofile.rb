class Stuprofile < ActiveRecord::Base
   validates_uniqueness_of :userid
end

class Entry < ActiveRecord::Base
  attr_accessible :date, :followers_ary, :recently_unfollowed
  serialize :followers_ary
  serialize :recently_unfollowed
end

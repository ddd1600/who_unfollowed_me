class UpdateEntries
  
  def go #for every other time to run the program after the first time
    prev               = Entry.last
    
    followers_ary = get_followers.split(/\n/)
    e                     = Entry.new
    e.id                  = prev.id + 1
    e.date                = Time.now.to_date
    e.followers_ary       = followers_ary
    e.recently_unfollowed = prev.followers_ary - followers_ary
    e.save 
  end

  def first_go
    followers_ary = get_followers.split(/\n/)
    e = Entry.new
    e.date = Time.now.to_date
    e.followers_ary = followers_ary
    e.recently_unfollowed = [""]
    e.save
  end
  
  def get_followers
    `t followers`
  end

end

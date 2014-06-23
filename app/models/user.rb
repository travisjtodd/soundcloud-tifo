class User < ActiveRecord::Base
  
  def self.from_omniauth(auth)
    where(auth.slice("uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.permalink = auth["extra"]["raw_info"]["permalink"]
      user.avatar_url = auth["info"]["image"]
    end
  end

end

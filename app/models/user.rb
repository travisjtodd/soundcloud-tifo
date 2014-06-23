class User < ActiveRecord::Base

  has_many :tifos
  
  def self.from_omniauth(auth)
    user = where(auth.slice("uid")).first || create_from_omniauth(auth)
    if user.access_token != auth["credentials"]["token"]
      user.update_columns(access_token: auth["credentials"]["token"])
    end
    return user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.permalink = auth["extra"]["raw_info"]["permalink"]
      user.avatar_url = auth["info"]["image"]
      user.access_token = auth["credentials"]["token"]
    end
  end

end

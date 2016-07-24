class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
     # raise auth.extra.raw_info.gender.inspect

      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.authemail
      user.gender = auth.extra.raw_info.gender
      user.image_link = auth.info.image
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
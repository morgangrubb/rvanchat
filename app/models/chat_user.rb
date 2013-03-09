class ChatUser < ActiveRecord::Base

  has_many :messages, foreign_key: "user_id"
  has_many :chats, through: :messages

  def self.user(session)

    if session[:user_id] == nil
      user = self.new
      user.nickname = "user_" + Time.now.to_i.to_s
      if user.save
        session[:user_id] = user.id
      end
    else
      user = self.find(session[:user_id])
    end

    # Return the user
    user

  end

  def image_url
    if link.present? && link =~ /www.facebook.com/
      link.gsub('www', 'graph') + "/picture"
    end
  end

  def update_from_facebook(data)
    self.nickname = data[:name]
    self.link     = data[:link]
    save
  end

  def to_s
    nickname
  end

end

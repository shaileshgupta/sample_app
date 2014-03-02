module UsersHelper

  def gravatar_for(user)
    gravatar_id = md5_hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def md5_hexdigest(data)
    Digest::MD5::hexdigest(data)
  end
  
end

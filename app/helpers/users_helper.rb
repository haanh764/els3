module UsersHelper
  def avatar_for(user, options = {size: 50})
    avatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    avatar_url = "ava.jpg?s=#{size}"
    image_tag(avatar_url, alt: user.name, class: "avatar")
  end
end

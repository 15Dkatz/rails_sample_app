module UsersHelper

  # Returns the Gravator for the given user
  def gravatar_for(user, size: 80 )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    # Must use double quotes in the below link, otherwise interpolation will fail.
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end

module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}" #1fda4469bcbec3badf5418269ffc5968
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
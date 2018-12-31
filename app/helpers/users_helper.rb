module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/1fda4469bcbec3badf5418269ffc5968"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end